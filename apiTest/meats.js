//http://192.168.50.64:3000/meats


pm.test("Meats test", function () { 
    pm.response.to.have.status(200);
    let res = pm.response.json();
    pm.expect(res.length).to.gt(0)
    pm.expect(res[0]).to.be.a('Object')
}); 


//http://192.168.50.64:3000/meats?fridgeid=eq.1

pm.test("Meats test", function () { 
    pm.response.to.have.status(200);
    let res = pm.response.json();
    pm.expect(res.length).to.gt(0)
    pm.expect(res[0]).to.be.a('Object')
    pm.expect(res[0].name).to.eql('ribs')
    pm.expect(res[0].type).to.eql('pork')
}); 

