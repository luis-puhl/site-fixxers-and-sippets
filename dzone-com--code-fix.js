(function (){
	var stuff = function (){
		let selector = "CodeMirror cm-s-default";
		let snippets = document.getElementsByClassName(selector);
		for (let i = 0; i < snippets.length; i++) {
			let snippet = snippets[i];
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

			let parent = snippet.parentElement;
			parent.insertBefore(newPre, snippet);
			parent.removeChild(snippet);
		}
	}
	stuff();
})();
