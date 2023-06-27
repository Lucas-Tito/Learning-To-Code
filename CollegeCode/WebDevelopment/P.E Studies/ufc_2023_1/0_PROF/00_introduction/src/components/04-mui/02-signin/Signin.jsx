import Container from '@mui/material/Container';
import Button from '@mui/material/Button';
import TextField from '@mui/material/TextField';
import Link from '@mui/material/Link';
import Box from '@mui/material/Box';
import Typography from '@mui/material/Typography';
import { useState } from "react";
import axios from "axios";
import { useNavigate } from "react-router-dom";
//import Grid from '@mui/material/Grid';

import "./Signin.css"



function Signin() {

    const [login, setLogin] = useState("")
    const [senha, setSenha] = useState("")
    const navigate = useNavigate()

    function SubmitHandle(e){
        e.preventDefault();
        const newlogin = {login, senha}
        axios.post("http://localhost:3001/login/retrieve", newlogin)
        .then(
            (res) => {
                if(res.data){
                    alert(`Sucesso login!`)
                    navigate("/listarAluno")
                }
                else{
                    alert(`errou!`)
                }

                
            }
        )
    }
    return (
        <Container component="main" maxWidth="xs">

            <Box
                sx={{
                    display: 'flex',
                    flexDirection: 'column',
                    justifyContent: 'center',
                    alignItems: 'center',
                    marginTop: 8
                }}
            >

                <Typography component="h1" variant="h5">
                    Sign in
                </Typography>

                <TextField
                    margin="normal"
                    required
                    fullWidth

                    autoFocus
                    label="Email Address"
                    id="email"
                    name="email"
                    type="email"
                    onChange={(event) => { setLogin(event.target.value) }}

                    autoComplete="email"
                />

                <TextField
                    margin="normal"
                    required
                    fullWidth

                    label="Password"
                    id="password"
                    name="password"
                    type="password"
                    onChange={(event) => { setSenha(event.target.value) }}

                    autoComplete="current-password"
                />

                <Button
                    fullWidth
                    type="submit"
                    variant="contained"
                    sx={{ mt: 3, mb: 2 }}
                    onClick={SubmitHandle}
                >
                    Sign In
                </Button>

                <Box
                    sx={{
                        display: "flex",
                        flexDirection: "row",
                        justifyContent: "space-between",
                        width:"100%",
                    }}
                >
                    <Link href="#" underline='none' className='link'>
                        Forgot password?
                    </Link>

                    <Link href="#" underline='none'  className='link'>
                        {"Don't have an account? Sign Up"}
                    </Link>
                </Box>

                {/*
                <Grid container>
                    <Grid item xs>
                        <Link href="#" underline='none' style={{ fontFamily: "Arial", fontSize: "14px" }}>
                            Forgot password?
                        </Link>
                    </Grid>
                    <Grid item>
                        <Link href="#" underline='none' style={{ fontFamily: "Arial", fontSize: "14px" }}>
                            {"Don't have an account? Sign Up"}
                        </Link>
                    </Grid>
                </Grid>
                */}
            </Box>
        </Container>
    )
}

export default Signin;
