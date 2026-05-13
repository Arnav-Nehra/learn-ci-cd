import express, { type Request, type Response } from "express";

const app = express();

app.use(express.json());

app.get("/hello",(req:Request,res:Response)=>{
    res.json("hello");
})

app.listen(3000);