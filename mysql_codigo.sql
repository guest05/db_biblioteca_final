create table usuário (id int auto_increment, nome varchar (255), telefone char (11), endereco varchar (255), primary key (id));

create table livro (id int auto_increment, nome varchar (255), id_autor int, id_editora int, id_area_de_conhecimento int, id_exemplar int, primary key (id), foreign key (id_autor) references autor (id), foreign key (id_editora) references editora (id), foreign key (id_area_de_conhecimento) references area_de_conhecimento (id), foreign key (id_exemplar) references exemplar (id));

create table exemplar (id int auto_increment, primary key (id));

create table autor (id int auto_increment, nome varchar (255), telefone char (11), endereco varchar (255), primary key (id));

create table editora (id int auto_increment, nome varchar (255), telefone char (11), endereco varchar (255), primary key (id));

create table area_de_conhecimento (id int auto_increment, descricao varchar (255), primary key (id));

create table palavra_chave (id int auto_increment, descricao varchar (255), primary key (id));

create table empréstimo (id int auto_increment, id_usuario int, id_livro int, data_emprestimo date, data_devolucao date, primary key (id), foreign key (id_usuario) references usuario (id), foreign key (id_livro) references livro (id));
