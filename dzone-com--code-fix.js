(function (){
	function cleanDzoneSnippetPrintMess(){
		let selector = "CodeMirror cm-s-default";
		let snippets = document.getElementsByClassName(selector);
		while (snippets.length){
			let snippet = snippets[0];
			let lines = snippet.getElementsByTagName("span");
			let newSnippet = "";
			for (let j = 0; j < lines.length; j++) {
				let line = lines[j];
				if ( !line.getAttribute("class") ) {
					let lineText = line.innerText;
					newSnippet += lineText + "\n";
				}
			}
			let newPre = document.createElement("pre");
			let newContent = document.createTextNode(newSnippet);
			newPre.appendChild(newContent);

			snippet.setAttribute("class", "");
			snippet.innerHTML  = "";
			snippet.appendChild(newPre);
		}
	}
	cleanDzoneSnippetPrintMess();
})();
