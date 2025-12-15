function obtenerUsuarios() {
    fetch('https://jsonplaceholder.typicode.com/users')
        .then(response => response.json())
        .then(data => {
            const listaUsuarios = document.getElementById('listaUsuarios');
            listaUsuarios.innerHTML = '';
            data.forEach(usuario => {
                const li = document.createElement('li');
                li.textContent = `${usuario.name} - ${usuario.email}`;
                listaUsuarios.appendChild(li);
            });
        })
        .catch(error => console.error('Error en la petición', error));
    }
