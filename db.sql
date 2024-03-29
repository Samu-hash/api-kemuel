PGDMP     ,    $                 |            kemuel    15.4    15.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                        1262    33023    kemuel    DATABASE        CREATE DATABASE kemuel WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_El Salvador.1252';
    DROP DATABASE kemuel;
                postgres    false                        2615    33025 	   catalogos    SCHEMA        CREATE SCHEMA catalogos;
    DROP SCHEMA catalogos;
                postgres    false                        2615    33024    usuarios    SCHEMA        CREATE SCHEMA usuarios;
    DROP SCHEMA usuarios;
                postgres    false            �            1259    33089    horarios    TABLE     �   CREATE TABLE catalogos.horarios (
    id_horario smallint NOT NULL,
    horario_inicio character varying(15) NOT NULL,
    horario_fin character varying(15) NOT NULL,
    estado character(1) NOT NULL,
    dia_servicio character varying(12) NOT NULL
);
    DROP TABLE catalogos.horarios;
    	   catalogos         heap    postgres    false    7            �            1259    33039    ministerios    TABLE     \  CREATE TABLE catalogos.ministerios (
    id_ministerio integer NOT NULL,
    nombre_ministerio character varying(75) NOT NULL,
    logo character varying(150) NOT NULL,
    historia character varying(5000) NOT NULL,
    estado character(1) NOT NULL,
    descripcion character varying(250) NOT NULL,
    logistica character varying(500) NOT NULL
);
 "   DROP TABLE catalogos.ministerios;
    	   catalogos         heap    postgres    false    7            �            1259    33046    ministerios_id_ministerio_seq    SEQUENCE     �   ALTER TABLE catalogos.ministerios ALTER COLUMN id_ministerio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME catalogos.ministerios_id_ministerio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 9999999
    CACHE 1
);
         	   catalogos          postgres    false    216    7            �            1259    33094 
   servidores    TABLE     �   CREATE TABLE usuarios.servidores (
    id_usuario bigint NOT NULL,
    id_ministerio integer NOT NULL,
    id_horario smallint NOT NULL,
    estado character(1) NOT NULL
);
     DROP TABLE usuarios.servidores;
       usuarios         heap    postgres    false    6            �            1259    33078    telefono_usuario    TABLE     �   CREATE TABLE usuarios.telefono_usuario (
    id_usuario bigint NOT NULL,
    telefono character varying(15) NOT NULL,
    es_principal character(1) NOT NULL,
    estado character(1) NOT NULL
);
 &   DROP TABLE usuarios.telefono_usuario;
       usuarios         heap    postgres    false    6            �            1259    33071    usuarios    TABLE     <  CREATE TABLE usuarios.usuarios (
    id_usuario bigint NOT NULL,
    nombres character varying(75) NOT NULL,
    apellidos character varying(75) NOT NULL,
    correo character varying(250) NOT NULL,
    clave character varying(250) NOT NULL,
    direccion character varying(150),
    estado character(1) NOT NULL
);
    DROP TABLE usuarios.usuarios;
       usuarios         heap    postgres    false    6            �            1259    33088    usuarios_id_usuario_seq    SEQUENCE     �   ALTER TABLE usuarios.usuarios ALTER COLUMN id_usuario ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME usuarios.usuarios_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 99999999999
    CACHE 1
);
            usuarios          postgres    false    218    6                      0    33089    horarios 
   TABLE DATA           d   COPY catalogos.horarios (id_horario, horario_inicio, horario_fin, estado, dia_servicio) FROM stdin;
 	   catalogos          postgres    false    221   �$                 0    33039    ministerios 
   TABLE DATA           z   COPY catalogos.ministerios (id_ministerio, nombre_ministerio, logo, historia, estado, descripcion, logistica) FROM stdin;
 	   catalogos          postgres    false    216   �$                 0    33094 
   servidores 
   TABLE DATA           U   COPY usuarios.servidores (id_usuario, id_ministerio, id_horario, estado) FROM stdin;
    usuarios          postgres    false    222   �$                 0    33078    telefono_usuario 
   TABLE DATA           X   COPY usuarios.telefono_usuario (id_usuario, telefono, es_principal, estado) FROM stdin;
    usuarios          postgres    false    219   �$                 0    33071    usuarios 
   TABLE DATA           f   COPY usuarios.usuarios (id_usuario, nombres, apellidos, correo, clave, direccion, estado) FROM stdin;
    usuarios          postgres    false    218   �$       !           0    0    ministerios_id_ministerio_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('catalogos.ministerios_id_ministerio_seq', 1, false);
       	   catalogos          postgres    false    217            "           0    0    usuarios_id_usuario_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('usuarios.usuarios_id_usuario_seq', 1, false);
          usuarios          postgres    false    220                       2606    33093    horarios horarios_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY catalogos.horarios
    ADD CONSTRAINT horarios_pkey PRIMARY KEY (id_horario);
 C   ALTER TABLE ONLY catalogos.horarios DROP CONSTRAINT horarios_pkey;
    	   catalogos            postgres    false    221            y           2606    33045    ministerios ministerios_pk 
   CONSTRAINT     f   ALTER TABLE ONLY catalogos.ministerios
    ADD CONSTRAINT ministerios_pk PRIMARY KEY (id_ministerio);
 G   ALTER TABLE ONLY catalogos.ministerios DROP CONSTRAINT ministerios_pk;
    	   catalogos            postgres    false    216            �           2606    33098    servidores servidores_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY usuarios.servidores
    ADD CONSTRAINT servidores_pkey PRIMARY KEY (id_usuario, id_ministerio);
 F   ALTER TABLE ONLY usuarios.servidores DROP CONSTRAINT servidores_pkey;
       usuarios            postgres    false    222    222            }           2606    33082 &   telefono_usuario telefono_usuario_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY usuarios.telefono_usuario
    ADD CONSTRAINT telefono_usuario_pkey PRIMARY KEY (id_usuario, telefono);
 R   ALTER TABLE ONLY usuarios.telefono_usuario DROP CONSTRAINT telefono_usuario_pkey;
       usuarios            postgres    false    219    219            {           2606    33077    usuarios usuarios_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY usuarios.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id_usuario);
 B   ALTER TABLE ONLY usuarios.usuarios DROP CONSTRAINT usuarios_pkey;
       usuarios            postgres    false    218            �           2606    33109 %   servidores servidores_id_horario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY usuarios.servidores
    ADD CONSTRAINT servidores_id_horario_fkey FOREIGN KEY (id_horario) REFERENCES catalogos.horarios(id_horario) NOT VALID;
 Q   ALTER TABLE ONLY usuarios.servidores DROP CONSTRAINT servidores_id_horario_fkey;
       usuarios          postgres    false    221    3199    222            �           2606    33104 (   servidores servidores_id_ministerio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY usuarios.servidores
    ADD CONSTRAINT servidores_id_ministerio_fkey FOREIGN KEY (id_ministerio) REFERENCES catalogos.ministerios(id_ministerio) NOT VALID;
 T   ALTER TABLE ONLY usuarios.servidores DROP CONSTRAINT servidores_id_ministerio_fkey;
       usuarios          postgres    false    216    222    3193            �           2606    33099 %   servidores servidores_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY usuarios.servidores
    ADD CONSTRAINT servidores_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES usuarios.usuarios(id_usuario) NOT VALID;
 Q   ALTER TABLE ONLY usuarios.servidores DROP CONSTRAINT servidores_id_usuario_fkey;
       usuarios          postgres    false    222    218    3195            �           2606    33083 1   telefono_usuario telefono_usuario_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY usuarios.telefono_usuario
    ADD CONSTRAINT telefono_usuario_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES usuarios.usuarios(id_usuario);
 ]   ALTER TABLE ONLY usuarios.telefono_usuario DROP CONSTRAINT telefono_usuario_id_usuario_fkey;
       usuarios          postgres    false    218    3195    219                  x������ � �            x������ � �            x������ � �            x������ � �            x������ � �     