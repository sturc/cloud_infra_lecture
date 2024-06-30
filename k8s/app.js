const http = require('http');
const os = require('os');

console.log("Node.js Server starting...");

var handler = function(request, response) {
  console.log("Ankommende Anfrage von " + request.connection.remoteAddress);
  response.writeHead(200);
  // do a complicated calculation
  function calculateRecursive(num) {
   if (num <= 1n) {
      return 1n;
    }
    return (num ** calculateRecursive(num - 1n));
  }
  // create a random number between 1 and 10
  const randomNumber = BigInt(Math.floor(Math.random() * 5) + 1);
  const result = calculateRecursive(randomNumber);
  response.write("The result of the complicated calculation is: " + result + "\n"); 
  response.write("Hallo, dies ist ein einfacher Node.js Server!\n");
  response.end("Anfrage wird bearbeitet von " + os.hostname() + "\n");
};

var www = http.createServer(handler);
www.listen(8080);

