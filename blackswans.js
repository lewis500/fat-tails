var d3 = require("d3");
var sd = 10,
	a = 3	
var X = d3.range(1000).map(d3.random.normal(0,sd));
var Y =  d3.range(1000).map( .5*d3.random.normal(0,sd*Math.sqrt(1-a)) + .5*d3.random.normal(0,sd*Math.sqrt(1+a))));





