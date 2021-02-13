//http://192.168.50.64:3000/grains_other


pm.test("G&O test", function () { 
    pm.response.to.have.status(200);
    let res = pm.response.json();
    pm.expect(res.length).to.gt(0)
    pm.expect(res[0]).to.be.a('Object')
}); 


//http://192.168.50.64:3000/grains_other?pantryid=eq.1

pm.test("G&O test", function () { 
    pm.response.to.have.status(200);
    let res = pm.response.json();
    pm.expect(res.length).to.gt(0)
    pm.expect(res[0]).to.be.a('Object')
    pm.expect(res[0].name).to.eql('beans')
    pm.expect(res[0].type).to.eql('black')
}); 

