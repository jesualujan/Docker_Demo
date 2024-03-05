const express = require ('express')
const app = express()

const port = process.env.PORT || 3000

//REQUEST 
app.get ('/', (req, res) => {
    res.send('<h2> KATA DEVEOPS 🐳 </h2>')
})

app.listen (port , () => {
    console.log ('Server running on port: ' ,  `http://localhost:${port}`)
})