import React, { useState, useEffect } from "react";
const fs = window.require("fs");

export default function App() {
  const [file, setFile] = useState();
  useEffect(() => {
    fs.readFile("./save.json", "utf8", (e, data) => {
      setFile(data);
    });
    console.log(file);
  }, [file]);
  return <div>{file}</div>;
}
