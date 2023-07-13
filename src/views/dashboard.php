<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Biblioweb | Dashboard</title>
    <link rel="stylesheet" href="/biblioweb/public/css/style.css" />
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  </head>
  <body>
    <header class="dashboard-header">
      <div class="container">
        <a href="/biblioweb/">
          <img
            src="/biblioweb/public/assets/img/logo-desktop.png"
            alt="Logo de Biblioweb: Libro abierto por la mitad con partículas desvaneciéndose del lado derecho"
          />
        </a>
        <nav class="dashboard-header__nav">
          <ul class="dashboard-header__links" aria-label="main">
            <li>
              <a
                class="btn-dashboard btn-primary-dashboard dashboard-header__link"
                href="/biblioweb/libros/"
                >Libros</a
              >
            </li>
            <li>
              <a
                class="btn-dashboard btn-primary-dashboard dashboard-header__link"
                href="/biblioweb/autores/"
                >Autores</a
              >
            </li>
            <li>
              <a
                class="btn-dashboard btn-primary-dashboard dashboard-header__link"
                href="/biblioweb/rating/"
                >Rating</a
              >
            </li>
            <li>
              <a
                class="btn-dashboard btn-primary-dashboard dashboard-header__link active"
                href="/biblioweb/dashboard/"
                aria-current="location"
                >Dashboard</a
              >
            </li>
          </ul>
        </nav>
        <div class="profile">
          <p class="profile__welcome">Hola, ADMIN</p>
          <div class="profile__img-container">
            <img
              class="profile__img"
              src="https://api.dicebear.com/6.x/lorelei/svg?seed=Mittens"
              alt="Imagen de perfil del administrador"
            />
          </div>
        </div>
      </div>
    </header>
    <main class="dashboard-container container">
      <nav class="dashboard__nav" aria-label="dashboard">
        <ul class="dashboard__links">
          <li>
            <a
              role="tab"
              aria-selected="true"
              id="resume-btn"
              class="btn-dashboard btn-secondary-dashboard dashboard__link active"
              >Resumen</a
            >
          </li>
          <li>
            <a
              role="tab"
              aria-selected="false"
              id="bibliography-btn"
              class="btn-dashboard btn-secondary-dashboard dashboard__link"
              >Bibliografía</a
            >
          </li>
          <li>
            <a
              role="tab"
              aria-selected="false"
              id="users-btn"
              class="btn-dashboard btn-secondary-dashboard dashboard__link"
              >Usuarios</a
            >
          </li>
        </ul>
      </nav>
      <section class="dashboard">
        <article class="dashboard__card" data-user-info-card>
          <h2>Usuarios registrados</h2>
          <p>Total de usuarios registrados en Biblioweb.</p>
          <p id="user-count" class="big-text"></p>
        </article>
        <article class="dashboard__card" data-book-info-card>
          <h2>Relación de libros por género</h2>
          <p>Todos los libros de Biblioweb ordenados por género.</p>
          <canvas id="books-by-genre"></canvas>
        </article>
        <article class="dashboard__card" data-book-info-card>
          <h2>Relación de libros por rating</h2>
          <p>Todos los libros de Biblioweb ordenados por rating.</p>
          <canvas id="books-by-rating"></canvas>
        </article>
        <article class="dashboard__card" data-book-info-card>
          <h2>Libros</h2>
          <p>Todos los libros almacenados en Biblioweb.</p>
          <p id="book-count" class="big-text"></p>
        </article>
        <article class="dashboard__card" data-user-info-card>
          <h2>Relación de usuarios por rol</h2>
          <p>
            Los usuarios de Biblioweb solo pueden tener el rol de usuario o
            administrador.
          </p>
          <canvas id="users-by-role"></canvas>
        </article>
        <article class="dashboard__card" data-book-info-card>
          <h2>Gestionar libros</h2>
          <p>Gestione los libros de Biblioweb desde un solo lugar.</p>
          <button id="open-books-crud" class="btn btn-tertiary">
            Gestionar libros
          </button>
        </article>
        <article class="dashboard__card" data-user-info-card>
          <h2>Gestionar usuarios</h2>
          <p>Gestione los usuarios de Biblioweb desde un solo lugar.</p>
          <button id="open-users-crud" class="btn btn-tertiary">
            Gestionar usuarios
          </button>
        </article>
      </section>
    </main>
  </body>
  <dialog class="form-modal" id="books-dialog">
    <h2 class="form-modal__title">
      Gestionar libros -
      <span class="txt-purple" id="book-status">Creando...</span>
    </h2>
    <p>Gestiona los libros desde un solo lugar.</p>
    <form action="/biblioweb/create/book/" enctype="multipart/form-data" method="post" id="book-form" class="dashboard-form">
      <input type="hidden" name="_method" value="put">
      <div class="dashboard-form__field-group">
        <label for="book-id" class="dashboard-form__label">ID</label>
        <input
          type="text"
          name="book-id"
          id="book-id"
          class="dashboard-form__field"
          readonly
        />
      </div>
      <div class="dashboard-form__field-group">
        <label for="rating" class="dashboard-form__label">Rating</label>
        <input
          class="dashboard-form__field"
          id="rating"
          type="number"
          min="1"
          max="5"
          name="rating"
          placeholder="Ej. 5"
        />
      </div>
      <div class="dashboard-form__field-group">
        <label for="title" class="dashboard-form__label">Título</label>
        <input
          class="dashboard-form__field"
          id="title"
          type="text"
          name="title"
          placeholder="Ej. El Principito"
        />
      </div>
      <div class="dashboard-form__field-group">
        <label for="pub-year" class="dashboard-form__label"
          >Año de publicación</label
        >
        <input
          class="dashboard-form__field"
          id="pub-year"
          type="number"
          name="pub-year"
          placeholder="Ej. 1943"
        />
      </div>
      <div class="dashboard-form__field-group">
        <label for="no-pages" class="dashboard-form__label"
          >Número de páginas</label
        >
        <input
          class="dashboard-form__field"
          id="no-pages"
          type="number"
          name="no-pages"
          placeholder="Ej. 120"
        />
      </div>
      <div class="dashboard-form__field-group">
        <label for="language" class="dashboard-form__label">Idioma</label>
        <input
          class="dashboard-form__field"
          id="language"
          type="text"
          name="language"
          placeholder="Ej. Español"
        />
      </div>
      <div class="dashboard-form__field-group">
        <label for="org-language" class="dashboard-form__label"
          >Idioma original</label
        >
        <input
          class="dashboard-form__field"
          id="org-language"
          type="text"
          name="org-language"
          placeholder="Ej. Francés"
        />
      </div>
      <div class="dashboard-form__field-group">
        <label for="description" class="dashboard-form__label"
          >Descripción</label
        >
        <textarea
          class="dashboard-form__field"
          id="description"
          name="description"
          rows="1"
          placeholder="Ej. Este libro es fabuloso..."
        ></textarea>
      </div>
      <div class="dashboard-form__field-group">
        <label for="fragment" class="dashboard-form__label">Fragmento</label>
        <textarea
          class="dashboard-form__field"
          id="fragment"
          name="fragment"
          rows="1"
          placeholder="Ej. Cuando tenía seis años..."
        ></textarea>
      </div>
      <div class="dashboard-form__field-group">
        <div>
          <label for="book-genre" class="dashboard-form__label">Género</label> -
          <a
            role="button"
            aria-label="¿No encuentras el género que buscas? Crear un nuevo género"
            class="select-options__btn"
            id="open-genre-dialog"
            >Crear Género</a
          >
        </div>
        <select name="genre-id" id="book-genre" class="dashboard-form__field">
          <option value="none" selected>Género</option>
          <?php foreach ($genres as $genre): ?>
          <option value="<?= $genre->get_id() ?>" ><?= $genre->get_name() ?></option>
          <?php endforeach; ?>
        </select>
      </div>
      <div class="dashboard-form__field-group">
        <div>
          <label for="book-author" class="dashboard-form__label">Autor</label>
          -
          <a
            role="button"
            aria-label="¿No encuentras el autoer que buscas? Crear un nuevo autor"
            class="select-options__btn"
            id="open-author-dialog"
            >Crear Autor</a
          >
        </div>
        <select name="author-id" id="book-author" class="dashboard-form__field">
          <option value="none" selected>Autor</option>
          <?php foreach ($authors as $author): ?>
          <option value="<?= $author->get_id() ?>"><?= $author->get_full_name() ?></option>
          <?php endforeach; ?>
        </select>
      </div>
      <div class="dashboard-form__field-group">
        <label for="cover" class="dashboard-form__label">Portada</label>
        <input
          class="dashboard-form__field"
          id="cover"
          type="file"
          name="cover"
        />
      </div>
    </form>
    <div class="dashboard-form__controls">
      <button form="book-form" type="button" id="open-search-book-dialog" class="btn-form-dashboard">
        Buscar libro
      </button>
      <button form="book-form" type="submit" name="update" class="btn-form-dashboard">
        Actualizar
      </button>
      <button form="book-form" type="submit" name="delete" class="btn-form-dashboard">
        Eliminar
      </button>
      <button form="book-form" type="submit" name="create" class="btn-form-dashboard">
        Crear
      </button>
    </div>
    <button
      type="button"
      id="close-books-dialog"
      class="form-modal__close"
      aria-label="Cerrar modal"
    ></button>
  </dialog>
  <dialog class="form-modal" id="genre-dialog">
    <h2 class="form-modal__title">Crear un nuevo género</h2>
    <p>Crea un nuevo género si no encuentras el que buscas.</p>
    <form action="/biblioweb/create/genre/" method="post" id="genre-form" class="dashboard-form--one-field">
      <input type="hidden" name="_method" value="put">
      <div class="dashboard-form__field-group">
        <label for="genre" class="dashboard-form__label">Género</label>
        <input
          class="dashboard-form__field"
          id="genre"
          type="text"
          name="genre"
          placeholder="Ej. Realismo Mágico"
        />
      </div>
    </form>
    <button type="submit" form="genre-form" class="btn-form-dashboard">
      Crear género
    </button>
    <button
      id="close-genre-dialog"
      class="form-modal__close"
      aria-label="Cerrar modal"
    ></button>
  </dialog>
  <dialog class="form-modal" id="author-dialog">
    <h2 class="form-modal__title">Crear un nuevo autor</h2>
    <p>Crea un nuevo autor si no encuentras el que buscas.</p>
    <form action="/biblioweb/create/author/" method="post" id="author-form" class="dashboard-form--one-field">
      <input type="hidden" name="_method" value="put">
      <div class="dashboard-form__field-group">
        <label for="new-author" class="dashboard-form__label">Autor</label>
        <input
          class="dashboard-form__field"
          id="new-author"
          type="text"
          name="author"
          placeholder="Ej. Sönke Ahrens"
        />
      </div>
      <div class="dashboard-form__field-group">
        <label for="profile-img" class="dashboard-form__label"
          >Foto de perfil</label
        >
        <input
          class="dashboard-form__field"
          id="profile-img"
          type="text"
          name="profile-img"
          placeholder="https://api.dicebear.com/6.x/lorelei/svg?seed=sönkeahrens"
          readonly
        />
      </div>
    </form>
    <button type="submit" form="author-form" class="btn-form-dashboard">
      Crear autor
    </button>
    <button
      id="close-author-dialog"
      class="form-modal__close"
      aria-label="Cerrar modal"
    ></button>
  </dialog>
  <dialog class="form-modal form-modal--users-dialog" id="users-dialog">
    <div>
      <h2 class="form-modal__title">Gestionar Usuarios</h2>
      <p>Gestiona los usuarios de la aplicación desde un solo lugar.</p>
    </div>
    <div class="user-table-wrapper">
      <table class="user-table">
        <thead>
          <tr>
            <th>ID</th>
            <th>Usuario</th>
            <th>Correo</th>
            <th>Rol</th>
            <th>Acciones</th>
            <th>Contraseña</th>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($users as $user): ?>
          <tr>
            <td><?= $user->get_id() ?></td>
            <td><?= $user->get_username() ?></td>
            <td><?= $user->get_email() ?></td>
            <td>
              <span class="role role-<?= strtolower($user->get_role()) ?>"><?= ucfirst($user->get_role()) ?></span>
            </td>
            <td class="user-table__actions">
              <button class="action-btn action-btn--edit">
                <img
                  src="/biblioweb/public/assets/img/icons/edit-icon.svg"
                  alt="Ícono de editar registro"
                />
              </button>
              <button class="action-btn action-btn--delete">
                <img
                  src="/biblioweb/public/assets/img/icons/delete-icon.svg"
                  alt="Ícono de eliminar registro"
                />
              </button>
            </td>
            <td><?= $user->get_passwd() ?></td>
          </tr>
          <?php endforeach; ?>
        </tbody>
      </table>
    </div>
    <button
      type="button"
      id="open-user-action-dialog"
      class="btn-form-dashboard"
    >
      Crear nuevo usuario
    </button>
    <button
      id="close-users-dialog"
      class="form-modal__close"
      aria-label="Cerrar modal"
    ></button>
  </dialog>
  <dialog class="form-modal form-modal--user-action" id="user-action-dialog">
    <h2 class="form-modal__title">
      <span id="user-action-title">Crear un nuevo usuario</span>
      <span id="user-action-title-id" class="txt-purple">5</span>
    </h2>
    <p id="user-action-text">Estás creando un nuevo usuario.</p>
    <form action="#" method="post" id="user-action-form" class="dashboard-form">
      <div class="dashboard-form__field-group">
        <label for="user-name" class="dashboard-form__label">Username</label>
        <input
          type="text"
          spellcheck="false"
          name="user-name"
          id="user-name"
          class="dashboard-form__field"
        />
      </div>
      <div class="dashboard-form__field-group">
        <label for="user-email" class="dashboard-form__label">Correo</label>
        <input
          class="dashboard-form__field"
          id="user-email"
          type="text"
          name="user-email"
          placeholder="Ej. email@gmail.com"
        />
      </div>
      <div class="dashboard-form__field-group">
        <label
          for="user-passwd"
          aria-describedby="user-passwd-tooltip"
          class="dashboard-form__label"
        >
          Contraseña
          <div class="user-passwd-tooltip-wrapper"></div>
          <span role="tooltip" id="user-passwd-tooltip" class="visually-hidden"
            >La contraseña será encriptada</span
          >
        </label>
        <input
          class="dashboard-form__field"
          id="user-passwd"
          type="text"
          name="user-passwd"
        />
      </div>
      <div class="dashboard-form__field-group">
        <div>
          <label for="user-role" class="dashboard-form__label">Rol</label>
        </div>
        <select name="user-role" id="user-role" class="dashboard-form__field">
          <?php foreach ($user_roles as $user_role): ?>
          <option value="<?= $user_role ?>" selected><?= ucfirst($user_role) ?></option>
          <?php endforeach; ?>
        </select>
      </div>
      <input id="user-action-input" type="hidden" name="user-action" />
    </form>
    <button
      type="submit"
      form="user-action-form"
      id="user-action-submit"
      class="btn-form-dashboard"
    >
      Confirmar
    </button>
    <button
      id="close-user-action-dialog"
      class="form-modal__close"
      aria-label="Cerrar modal"
    ></button>
  </dialog>
  <dialog class="form-modal" id="search-book-dialog">
    <h2 class="form-modal__title">Busca el libro que necesites</h2>
    <p>Debes buscar el libro por su ID.</p>
    <form id="book-id-form" class="dashboard-form--one-field">
      <div class="dashboard-form__field-group">
        <label for="search-book-id" class="dashboard-form__label">ID de libro</label>
        <input
          class="dashboard-form__field"
          id="search-book-id"
          name="book-id"
          type="number"
          min="1"
          placeholder="Ej. 3"
        />
      </div>
    </form>
    <button type="button" form="book-id-form" id="search-book-id-btn" class="btn-form-dashboard" aria-label="Buscar libro">
      Buscar
    </button>
    <button
      id="close-search-book-dialog"
      class="form-modal__close"
      aria-label="Cerrar modal"
    ></button>
  </dialog>
  <script src="/biblioweb/public/js/dashboard-charts.js"></script>
  <script src="/biblioweb/public/js/dashboard-navigation.js"></script>
  <script src="/biblioweb/public/js/dashboard-modals.js"></script>
  <script src="/biblioweb/public/js/dashboard-forms.js"></script>
</html>
