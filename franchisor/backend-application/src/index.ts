import express from 'express'

const app = express();

app.get('/', (request, response) => {
  return response.json({ message: 'Hello Word from Franchisor server!' })
})

const PORT = 3000;

app.listen(PORT, () => {
  console.log(`Franchisor server is running at port ${PORT}`)
});
