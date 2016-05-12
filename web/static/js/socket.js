import {Socket} from "phoenix"
window.Socket = Socket;


let socket = new Socket("/socket", {})
socket.connect()

let channel = socket.channel("playrooms:music", {})
channel.join()


channel.on("note", function (msg) {
   console.log("GOT MSG ", msg);
});

window.channel = channel;


