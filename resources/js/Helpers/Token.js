class Token{

    isValid(token){
     const payload = this.payload(token)
     console.log("payload: ")
     console.log(payload)
     if (payload) {
      console.log("to login: "+payload.iss)
       return payload.iss = "http://localhost:8000/api/auth/login" || "http://localhost:8000/api/auth/register" ? true : false
     }
     return false
    }   
   
    payload(token){
     const payload = token.split('.')[1]
     return this.decode(payload)
    }

    decode(payload){
     return JSON.parse(atob(payload))
    } 
   
   }
   
   export default Token = new Token()