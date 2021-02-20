
//http://192.168.50.64:3000/rpc/login


pm.test("Login test", function () { 
    pm.response.to.have.status(200);
    let res = pm.response.json();
    pm.expect(res.length).to.eql(1)
    pm.expect(res[0]).to.be.a('Object')
    pm.expect(res[0].token).to.be.a('String')
}); 


//http://192.168.50.64:3000/rpc/signup


pm.test("Signup test", function () { 
    pm.response.to.have.status(200);
    let res = pm.response.json();
    pm.expect(res).to.eql(null)
});  


//http://192.168.50.64:3000/rpc/login_admin


pm.test("Login_admin test", function () { 
    pm.response.to.have.status(200);
    let res = pm.response.json();
    pm.expect(res.length).to.eql(1)
    pm.expect(res[0]).to.be.a('Object')
    pm.expect(res[0].token).to.be.a('String')
}); 


//http://192.168.50.64:3000/fridge?id=eq.1

pm.test("Fridge By id", function () { 
    pm.response.to.have.status(200);
    let res = pm.response.json();
    pm.expect(res.length).to.gt(0)
    pm.expect(res[0]).to.be.a('Object')
    pm.expect(res[0].id).to.eql(1)
}); 


//http://192.168.50.64:3000/pantry?id=eq.1

pm.test("Pantry by id", function () { 
    pm.response.to.have.status(200);
    let res = pm.response.json();
    pm.expect(res.length).to.gt(0)
    pm.expect(res[0]).to.be.a('Object')
    pm.expect(res[0].id).to.eql(1)
}); 


//http://192.168.50.64:3000/fruits_vegetables?fridgeid=eq.1

pm.test("F&V by fridge id", function () { 
    pm.response.to.have.status(200);
    let res = pm.response.json();
    pm.expect(res.length).to.gt(0)
    pm.expect(res[0]).to.be.a('Object')
}); 


//http://192.168.50.64:3000/meats?fridgeid=eq.1

pm.test("Meats by fridge id", function () { 
    pm.response.to.have.status(200);
    let res = pm.response.json();
    pm.expect(res.length).to.gt(0)
    pm.expect(res[0]).to.be.a('Object')
}); 

//http://192.168.50.64:3000/meats?fridgeid=eq.1

pm.test("Meats by fridge id", function () { 
    pm.response.to.have.status(200);
    let res = pm.response.json();
    pm.expect(res.length).to.gt(0)
    pm.expect(res[0]).to.be.a('Object')
}); 

//http://192.168.50.64:3000/grains_other?pantryid=eq.1

pm.test("G&O by pantry id", function () { 
    pm.response.to.have.status(200);
    let res = pm.response.json();
    pm.expect(res.length).to.gt(0)
    pm.expect(res[0]).to.be.a('Object')
}); 













