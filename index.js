const { Server, Socket } = require('socket.io');

const io = new Server(8000, {
  cors: {
    origin: ['http://localhost:3000', 'http://localhost:3001'],
    credentials: true,
  }
});

let user = 0
io.on('connection', async (socket) => {
     //disconnect
     user++;
     console.log("user connect ", user);


    socket.on('formSubmited', async(data) =>{
      if(data.success){
        const notifiy = await data.notification
         await  io.emit('getMessage',notifiy)

      }
    
    })

  
     socket.on("disconnect", async() => {
        user--
        console.log(user);
       console.log("disconnect");
     })
})
