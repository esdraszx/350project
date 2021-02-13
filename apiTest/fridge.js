//http://192.168.50.64:3000/fridge

pm.test("Fridge test", function () { 
    pm.response.to.have.status(200);
    let res = pm.response.json();
    pm.expect(res.length).to.gt(0)
    pm.expect(res[0]).to.be.a('Object')
    pm.expect(res[0].id).to.eql(1)
}); 
