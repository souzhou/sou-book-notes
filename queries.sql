-- Create table --

CREATE DATABASE sou-book-notes

-- Create books --

CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    author TEXT NOT NULL,
    published DATE NOT NULL,
    isbn VARCHAR(13) NOT NULL UNIQUE,
    cover_image_title VARCHAR(255) NOT NULL UNIQUE,
    summary TEXT NOT NULL,
    notes TEXT NOT NULL,
    date_read DATE NOT NULL,
    url_amazon TEXT,
    url_goodreads TEXT,
    url_archive_org TEXT,
    url_openlibrary TEXT,
    get_param VARCHAR(255) NOT NULL UNIQUE
);

-- Test book --

INSERT INTO books (title, author, published, isbn, cover_image_title, summary, notes, date_read, url_goodreads, url_openlibrary, get_param)
VALUES (
    'Yasunari Kawabata-Yukio Mishima : correspondencia (1945-1970)',
    'Yasunari Kawabata',
    '2004-05-01',
    '8495908751',
    'cover_01',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
            et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
            aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
            cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
            culpa qui officia deserunt mollit anim id est laborum.

            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
            et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut',

    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                labore et dolore magna aliqua. Proin tortor purus platea sit eu id nisi litora libero. Neque
                vulputate consequat ac amet augue blandit maximus aliquet congue. Pharetra vestibulum posuere
                ornare faucibus fusce dictumst orci aenean eu facilisis ut volutpat commodo senectus purus
                himenaeos fames primis convallis nisi.

                Phasellus fermentum malesuada phasellus netus dictum aenean placerat egestas amet. Ornare taciti
                semper dolor tristique morbi. Sem leo tincidunt aliquet semper eu lectus scelerisque quis.
                Sagittis vivamus mollis nisi mollis enim fermentum laoreet.

                Curabitur semper venenatis lectus viverra ex dictumst nulla maximus. Primis iaculis elementum
                conubia feugiat venenatis dolor augue ac blandit nullam ac phasellus turpis feugiat mollis. Duis
                lectus porta mattis imperdiet vivamus augue litora lectus arcu. Justo torquent pharetra volutpat
                ad blandit bibendum accumsan nec elit cras luctus primis ipsum gravida class congue.

                Vehicula etiam elementum finibus enim duis feugiat commodo adipiscing tortor tempor elit. Et
                mollis consectetur habitant turpis tortor consectetur adipiscing vulputate dolor lectus iaculis
                convallis adipiscing. Nam hendrerit dignissim condimentum ullamcorper diam morbi eget
                consectetur odio in sagittis.',

    '2025-03-19',
    '71508.Correspondance',
    'OL17794710W/Yasunari_Kawabata-Yukio_Mishima?edition=key%3A/books/OL26384035M',
    'kawabata_mishima_correspondance'
)