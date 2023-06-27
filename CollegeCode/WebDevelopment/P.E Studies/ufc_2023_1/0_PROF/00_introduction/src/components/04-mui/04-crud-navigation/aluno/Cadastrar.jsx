import { Typography, Box, TextField, Button, Select, MenuItem, InputLabel, FormControl, FormGroup, FormLabel, FormControlLabel, Checkbox } from "@mui/material"
import { useState } from "react";
import axios from "axios";
import { useNavigate } from "react-router-dom";


//
const Cadastrar = () => {

    //mudança de variavel para curso para preencher o drop
    const [nome, setNome] = useState("")
    const [curso, setCurso] = useState("")
    const [ira, setIra] = useState("")

    const navigate = useNavigate()

    //insere novo aluno no endpoint
    //de acordo com o model do express
    const handleSubmit = (e) => {
        e.preventDefault();
        const newalunos = {nome,curso,ira}
        axios.post("http://localhost:3001/aluno/criar",newalunos)
        .then(
            (res) => {
                console.log(res.data.id)
                alert(`alunos ${nome} criado com sucesso!`)
                navigate("/listarAluno")
            }
        )
        .catch(error=>console.log(error))
        /*console.log(nome)
        console.log(curso)
        console.log(ira)
        console.log(ai)*/


    }

    return (
        <>
            <Typography variant="h5" fontWeight="bold">
                Cadastrar alunos
            </Typography>

            <Box
                component="form"
                onSubmit={handleSubmit}
                sx={{
                    width: "80%"
                }}
            >

                <TextField
                    margin="normal"
                    required
                    fullWidth
                    id="nome"
                    label="Nome Completo"
                    name="nome"
                    onChange={(event) => { setNome(event.target.value) }}
                />


                <TextField
                    margin="normal"
                    required
                    fullWidth
                    id="ira"
                    label="IRA"
                    name="ira"
                    onChange={(event) => { setIra(event.target.value) }}
                />
                <FormControl fullWidth sx={{ marginTop: 2 }}>
                    <InputLabel id="select-tit-label">Curso</InputLabel>
                    <Select
                        labelId="select-tit-label"
                        value={curso}
                        label="Curso"
                        onChange={(event) => { setCurso(event.target.value) }}

                    >
                        <MenuItem value="ES">ES</MenuItem>
                        <MenuItem value="CC">CC</MenuItem>
                        <MenuItem value="SI">SI</MenuItem>
                        <MenuItem value="DD">DD</MenuItem>
                        <MenuItem value="EC">EC</MenuItem>
                        <MenuItem value="RC">RC</MenuItem>
                    </Select>
                </FormControl>


                <Box
                    sx={{
                        display: "flex",
                        flexDirection: "row",
                        justifyContent: "center"
                    }}

                >
                    <Button
                        type="submit"
                        variant="contained"
                        sx={{ mt: 3, mb: 2 }}
                    >
                        Cadastrar
                    </Button>
                </Box>

            </Box>

        </>
    )
}

export default Cadastrar