pm.test("Status test", function () { 
    pm.response.to.have.status(200);
    let res = pm.response.json();
    pm.expect(res).to.be.a('Array')
}); 



