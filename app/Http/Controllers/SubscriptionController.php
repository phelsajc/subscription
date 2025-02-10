<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Stripe\Plan;
use Stripe\Stripe;
use Tymon\JWTAuth\Facades\JWTAuth;
use Stripe\Checkout\Session;
use App\Model\Subscriptions;
use App\Model\Payments;
use App\Model\Plans;
use Carbon\Carbon;
use Stripe\PaymentIntent;

class SubscriptionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $this->middleware('JWT');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $user = JWTAuth::parseToken()->authenticate(); // Get the logged-in user
        $plan = Plans::where(["id" => $request->plan])->first();
        Stripe::setApiKey(env('STRIPE_SECRET'));
        $amt = intval($request->amount * 100);
        $session = Session::create([
            'payment_method_types' => ['card'],
            'line_items' => [
                [
                    'price_data' => [
                        'currency' => 'usd',
                        'product_data' => ['name' => $plan->name],
                        'unit_amount' => $amt,
                    ],
                    'quantity' => 1,
                ]
            ],
            'mode' => 'payment',
            'metadata' => [
                'plan' => $request->plan,
                'user' => $user->id,
                'hasCurrent' => $request->hasCurrent,
                'currentSubscriptionId' => $request->currentSubscriptionId
            ],
            'success_url' => url('/manage-subscription?session_id={CHECKOUT_SESSION_ID}'),
            'cancel_url' => url('/manage-subscription?session_id={CHECKOUT_SESSION_ID}&error=true'),
        ]);
        return response()->json(['id' => $session->id]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $user = JWTAuth::parseToken()->authenticate(); // Get the logged-in user
        if ($id != 0) {
            Stripe::setApiKey(env('STRIPE_SECRET'));
            $checkoutdetails = Session::retrieve($id);
            $payment_details = PaymentIntent::retrieve($checkoutdetails->payment_intent);
            $created = Carbon::createFromTimestamp($payment_details->created);
            if ($checkoutdetails->metadata->hasCurrent) {
                Subscriptions::where(['id' => $checkoutdetails->metadata->currentSubscriptionId])->update([
                    'status' => 2,
                ]);
            }  
            $Subscriptions = new Subscriptions;
            $Subscriptions->planuid = $checkoutdetails->metadata->plan;
            $Subscriptions->nextbilling = date("Y-m-d", strtotime("+1 month"));
            $Subscriptions->useruid = $checkoutdetails->metadata->user;
            $Subscriptions->startdate = date("Y-m-d");
            $Subscriptions->amount = $payment_details->amount;
            $Subscriptions->status = 1;
            $Subscriptions->sessionid = $id;
            $Subscriptions->save();
            $paymets = new Payments();
            $paymets->currency = $payment_details->currency;
            $paymets->useruid = $user->id;
            $paymets->created_at = $created->toDateTimeString();
            $paymets->amount = $payment_details->amount/100;
            $paymets->status = $payment_details->status;
            $paymets->sessionid = $id;
            $paymets->save();
            $data = Subscriptions::join('plans', 'subscription.planuid', '=', 'plans.id')
                ->select('plans.name', 'plans.price', 'subscription.useruid', 'subscription.sessionid', 'subscription.status', 'subscription.nextbilling')
                ->where(['sessionid' => $id])->first();
            return $data;
        } else {
            $data = Subscriptions::join('plans', 'subscription.planuid', '=', 'plans.id')
                ->select('plans.name', 'plans.price', 'subscription.useruid', 'subscription.sessionid', 'subscription.status', 'subscription.nextbilling')
                ->where(['useruid' => $user->id, 'status' => 1])->first();
            return $data;
        }
    }

    public function error_checkout($id)
    {
        Stripe::setApiKey(env('STRIPE_SECRET'));
        /* $data = Subscriptions::join('plans', 'subscription.planuid', '=', 'plans.id')
            ->select('plans.name', 'plans.price', 'subscription.useruid', 'subscription.sessionid', 'subscription.status', 'subscription.nextbilling')
            ->where(['sessionid' => $id])->first(); */
        $checkoutdetails = Session::retrieve($id);
        $created = Carbon::createFromTimestamp($checkoutdetails->created);

        $paymets = new Payments();
        $paymets->currency = $checkoutdetails->currency;
        $paymets->useruid = $checkoutdetails->metadata->user;
        $paymets->created_at = $created->toDateTimeString();
        $paymets->amount = $checkoutdetails->amount_total;
        $paymets->status = $checkoutdetails->status;
        $paymets->sessionid = $id;
        $paymets->save();
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
