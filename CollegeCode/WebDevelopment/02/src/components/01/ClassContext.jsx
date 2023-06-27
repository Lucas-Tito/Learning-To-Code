import React from "react";
import ColorTheme from "./MyColorContext";
import FunctionContextA from "./FunctionContextA";

class ClassA extends React.Component {

    render() {
        return (
            <div className="q1">
                <h1 className="q_header">Questão 1</h1>
                <FunctionContextA/>
            </div>
        )
    }
}

export default ClassA