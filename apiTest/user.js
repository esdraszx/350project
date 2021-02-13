//http://192.168.50.64:3000/user?id=eq.1

pm.test("Status test", function () { 
    pm.response.to.have.status(200);
    let res = pm.response.json();
    pm.expect(res.length).to.eql(1)
    pm.expect(res[0]).to.be.a('Object')
    pm.expect(res[0].username).to.eql('esdras')
}); 

