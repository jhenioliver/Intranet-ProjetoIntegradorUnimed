//Função dos Documentos
function showModal() {
    document.getElementById('modal').style.display = 'block';
}

function hideModal() {
    document.getElementById('modal').style.display = 'none';
}
function toggleLinks(divNumber) {
	var linksDivs = document.getElementsByClassName('links');
	for (var i = 0; i < linksDivs.length; i++) {
	  if (i + 1 === divNumber) {
		linksDivs[i].style.display = (linksDivs[i].style.display === 'block') ? 'none' : 'block';
	  } else {
		linksDivs[i].style.display = 'none';
	  }
	}
  }

//Função de pesquisa
function searchText() {
	var input = document.getElementById("search-input").value.trim().toLowerCase();
	var body = document.body;
	var highlightedClass = "searched";
	var found = false;
  
	// Verificar se o campo de pesquisa está vazio
	if (input.length === 0) {
	  alert("Por favor, insira algo para pesquisar.");
	  return;
	}
  
	// Remover destaque anterior
	var highlightedElements = document.getElementsByClassName(highlightedClass);
	while (highlightedElements.length > 0) {
	  var element = highlightedElements[0];
	  var text = document.createTextNode(element.textContent);
	  element.parentNode.replaceChild(text, element);
	}
  
	// Realizar a pesquisa e destacar todas as palavras encontradas
	var textNodes = getTextNodes(body);
	for (var i = 0; i < textNodes.length; i++) {
	  var node = textNodes[i];
	  var content = node.textContent;
	  var pattern = new RegExp("(" + input + ")", "gi");
	  var replacedContent = content.replace(pattern, "<span class='" + highlightedClass + "'>$&</span>");
	  if (content !== replacedContent) {
		var wrapper = document.createElement("div");
		wrapper.innerHTML = replacedContent;
		insertAfter(wrapper.firstChild, node);
		node.remove();
		found = true;
	  }
	}
  
	// Exibir alerta se nenhuma ocorrência for encontrada
	if (!found) {
	  alert("Nenhum resultado encontrado para a pesquisa.");
	}
  
	// Fazer a tela rolar em direção à primeira ocorrência encontrada
	var firstHighlightedElement = document.getElementsByClassName(highlightedClass)[0];
	if (firstHighlightedElement) {
	  firstHighlightedElement.scrollIntoView({ behavior: 'smooth', block: 'center' });
	}
  }
  
  function getTextNodes(node) {
	var textNodes = [];
	if (node.nodeType === Node.TEXT_NODE) {
	  textNodes.push(node);
	} else {
	  var childNodes = node.childNodes;
	  for (var i = 0; i < childNodes.length; i++) {
		var childTextNodes = getTextNodes(childNodes[i]);
		textNodes.push.apply(textNodes, childTextNodes);
	  }
	}
	return textNodes;
  }
  
  function insertAfter(newNode, referenceNode) {
	referenceNode.parentNode.insertBefore(newNode, referenceNode.nextSibling);
  }
  
//Relógio acima do footer
function updateClock() {
    var clockElement = document.getElementById('clock');
    var date = new Date();
    var hours = date.getHours();
    var minutes = date.getMinutes();
    var seconds = date.getSeconds();

    // Formatação com zero à esquerda, se necessário
    if (hours < 10) {
      hours = '0' + hours;
    }
    if (minutes < 10) {
      minutes = '0' + minutes;
    }
    if (seconds < 10) {
      seconds = '0' + seconds;
    }

    var time = hours + ':' + minutes + ':' + seconds;

    // Atualiza a parte do relógio com o horário atualizado
    clockElement.innerHTML = date.toLocaleDateString('pt-BR') + ' ' + time;
  }

  // Chama a função updateClock inicialmente para evitar o atraso de 1 segundo
  updateClock();

  // Atualiza o relógio a cada segundo
  setInterval(updateClock, 1000);