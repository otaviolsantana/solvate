function showContent(section) {
    console.log('Mostrando conteúdo da seção:', section);

    // Oculta todos os conteúdos
    const contents = document.querySelectorAll('#main-content .content');
    contents.forEach(content => content.style.display = 'none');

    // Mostra o conteúdo da seção clicada
    const sectionContent = document.getElementById(section);
    if (sectionContent) {
        sectionContent.style.display = 'block';
    } else {
        console.error('Seção não encontrada:', section);
    }
}

// Carregar a aba 'Home' como padrão
showContent('home');
