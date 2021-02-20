
//http://192.168.50.64:3000/rpc/login


pm.test("Status test", function () { 
    pm.response.to.have.status(200);
    let res = pm.response.json();
    pm.expect(res.length).to.eql(1)
    pm.expect(res[0]).to.be.a('Object')
    pm.expect(res[0].token).to.be.a('String')
}); 


//http://192.168.50.64:3000/rpc/signup


pm.test("G&O test", function () { 
    pm.response.to.have.status(200);
    let res = pm.response.json();
    pm.expect(res).to.eql(null)
});  


//http://192.168.50.64:3000/rpc/login_admin


pm.test("Status test", function () { 
    pm.response.to.have.status(200);
    let res = pm.response.json();
    pm.expect(res.length).to.eql(1)
    pm.expect(res[0]).to.be.a('Object')
    pm.expect(res[0].token).to.be.a('String')
}); 


http://192.168.50.64:3000/fridge?id=eq.1

pm.test("Fridge test", function () { 
    pm.response.to.have.status(200);
    let res = pm.response.json();
    pm.expect(res.length).to.gt(0)
    pm.expect(res[0]).to.be.a('Object')
    pm.expect(res[0].id).to.eql(1)
}); 


http://192.168.50.64:3000/pantry?id=eq.1

pm.test("Pantry test", function () { 
    pm.response.to.have.status(200);
    let res = pm.response.json();
    pm.expect(res.length).to.gt(0)
    pm.expect(res[0]).to.be.a('Object')
    pm.expect(res[0].id).to.eql(1)
}); 


http://192.168.50.64:3000/fruits_vegetables?fridgeid=eq.1

pm.test("Pantry test", function () { 
    pm.response.to.have.status(200);
    let res = pm.response.json();
    pm.expect(res[0]).to.be.a('Object')
}); 


http://192.168.50.64:3000/meats?fridgeid=eq.1

pm.test("Pantry test", function () { 
    pm.response.to.have.status(200);
    let res = pm.response.json();
    pm.expect(res[0]).to.be.a('Object')
}); 












