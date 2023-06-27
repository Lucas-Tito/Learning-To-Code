import { Typography, Box, TextField, Button, Select, MenuItem, InputLabel, FormControl, FormGroup, FormLabel, FormControlLabel, Checkbox } from "@mui/material"
import { useState, useEffect } from "react"
import { useParams } from 'react-router-dom';
import axios from "axios";
import { useNavigate } from "react-router-dom";


const Editar = () => {

    const [nome, setNome] = useState("")
    const [curso, setCurso] = useState("")
    const [ira, setIra] = useState("")
    const navigate = useNavigate()

    let { id } = useParams()


    useEffect(
        () => {

            //memória
            //let professor = getProfessorById(id)
            //console.log(professor)

            /*if(professor) {
                setNome(professor.nome)
                setCurso(professor.curso)
                setTitulacao(professor.titulacao)
                setarea_interesse(professor.area_interesse)
            }*/
            console.log(id)
            axios.get("http://localhost:3001/aluno/retrieve/" + id)
                .then(
                    (res) => {
                        setNome(res.data.nome)
                        setCurso(res.data.curso)
                        setIra(res.data.ira)
                        
                    }
                )
                .catch(error => console.log(error))
        }
        ,
        [id]
    )

    /*function getProfessorById(id) {
        const professores = [
            { id: 0, nome: "Vito Corleone", curso: "Sistemas de Informação", titulacao: "DOUT", area_interesse: { es: true, al: false, ds: false, mc: true } },
            { id: 1, nome: "Michael Corleone", curso: "Sistemas de Informação", titulacao: "DOUT", area_interesse: { es: true, al: false, ds: false, mc: true } },
            { id: 2, nome: "Kay Adams", curso: "Sistemas de Informação", titulacao: "DOUT", area_interesse: { es: true, al: false, ds: false, mc: true } },
            { id: 3, nome: "Peter Clemenza", curso: "Sistemas de Informação", titulacao: "GRAD", area_interesse: { es: true, al: true, ds: false, mc: true } },
            { id: 4, nome: "Salvatore Tessio", curso: "Sistemas de Informação", titulacao: "MEST", area_interesse: { es: true, al: false, ds: false, mc: true } },
            { id: 5, nome: "Luca Brasi", curso: "Sistemas de Informação", titulacao: "GRAD", area_interesse: { es: true, al: false, ds: false, mc: true } }
        ]
         
        for (let i=0; i<professores.length; i++) {
        
            if (professores[i].id == id) return professores[i]
        }
        return null
    }*/


    const handleSubmit = (e) => {
        e.preventDefault();
        /*console.log(nome)
        console.log(curso)
        console.log(titulacao)
        console.log(area_interesse)*/
        const updatedAluno =
        {
            nome, curso, ira
        }
        //axios.put('http://localhost:3001/students/' + params.id, updatedStudent)
        axios.put('http://localhost:3001/aluno/update/' + id, updatedAluno)
            .then(
                res => {
                    //console.log(res.data)
                    //props.history.push('/listStudent');
                    //console.log(props)
                    navigate("/listarAluno")
                }   
            )
            .catch(error => console.log(error))

    }

    return (
        <>
            <Typography variant="h5" fontWeight="bold">
                Editar alunos
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
                    value={nome}
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
                    value={ira}
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
                        Editar
                    </Button>
                </Box>

            </Box>

        </>
    )
}

export default Editar