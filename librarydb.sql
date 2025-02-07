PGDMP                       }         	   librarydb    17.2    17.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false                       1262    16414 	   librarydb    DATABASE     �   CREATE DATABASE librarydb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
    DROP DATABASE librarydb;
                     postgres    false            �            1259    16415    books    TABLE     �  CREATE TABLE public.books (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    title character varying(255) NOT NULL,
    author character varying(255) NOT NULL,
    published_year integer NOT NULL,
    stock integer DEFAULT 0 NOT NULL,
    isbn character varying(13) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.books;
       public         heap r       postgres    false            �            1259    16449 
   borrowings    TABLE     �  CREATE TABLE public.borrowings (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    book_id uuid,
    member_id uuid,
    borrow_date date NOT NULL,
    return_date date,
    status character varying(10) DEFAULT 'BORROWED'::character varying NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.borrowings;
       public         heap r       postgres    false            �            1259    16428    members    TABLE     v  CREATE TABLE public.members (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    phone character varying(15) NOT NULL,
    address text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.members;
       public         heap r       postgres    false                      0    16415    books 
   TABLE DATA           g   COPY public.books (id, title, author, published_year, stock, isbn, created_at, updated_at) FROM stdin;
    public               postgres    false    217   �                 0    16449 
   borrowings 
   TABLE DATA           v   COPY public.borrowings (id, book_id, member_id, borrow_date, return_date, status, created_at, updated_at) FROM stdin;
    public               postgres    false    219                    0    16428    members 
   TABLE DATA           Z   COPY public.members (id, name, email, phone, address, created_at, updated_at) FROM stdin;
    public               postgres    false    218   �       j           2606    16427    books books_isbn_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_isbn_key UNIQUE (isbn);
 >   ALTER TABLE ONLY public.books DROP CONSTRAINT books_isbn_key;
       public                 postgres    false    217            l           2606    16425    books books_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.books DROP CONSTRAINT books_pkey;
       public                 postgres    false    217            r           2606    16457    borrowings borrowings_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.borrowings
    ADD CONSTRAINT borrowings_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.borrowings DROP CONSTRAINT borrowings_pkey;
       public                 postgres    false    219            n           2606    16439    members members_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.members
    ADD CONSTRAINT members_email_key UNIQUE (email);
 C   ALTER TABLE ONLY public.members DROP CONSTRAINT members_email_key;
       public                 postgres    false    218            p           2606    16437    members members_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.members
    ADD CONSTRAINT members_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.members DROP CONSTRAINT members_pkey;
       public                 postgres    false    218            s           2606    16458 "   borrowings borrowings_book_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.borrowings
    ADD CONSTRAINT borrowings_book_id_fkey FOREIGN KEY (book_id) REFERENCES public.books(id);
 L   ALTER TABLE ONLY public.borrowings DROP CONSTRAINT borrowings_book_id_fkey;
       public               postgres    false    219    4716    217            t           2606    16463 $   borrowings borrowings_member_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.borrowings
    ADD CONSTRAINT borrowings_member_id_fkey FOREIGN KEY (member_id) REFERENCES public.members(id);
 N   ALTER TABLE ONLY public.borrowings DROP CONSTRAINT borrowings_member_id_fkey;
       public               postgres    false    4720    219    218               �  x����n�F���Sp������c76j'1,�E�n��ܱX3d:��8�>GW���Q�$���h � �%��t�9�N����9��ik�2s��T9(%|s����"L�L��ԼZ��4NS���>�c�>7"HӘ&8ϝV�)cM#9ݚ&U+�zk��\z��W'�F���,���%0��F^<x�Q��nl���o�}=��n��]��%�X�kD��Q{ �����ߧ�Z���J�g�:Q��>�b�dZ"030e��>����<���=�o�#�=}�C�F�����O��DW���ib��p6:�����v[r{S��]�6?����n;��/Tc�<B����.ぢ���2D���3Qf��!qr�sS��H��������V�d �ihXI$#�sR�:�_
edqAJ�Dԁ逊�5S�e�)���r����^���?t�<A���I�Zz)�B��(�9&2.J
�?� $�IΡ��Rמ��sڗu|��\��(PNK�T��������+^�4�`�,�=M�}�����#!a�gc�c���JΗʢ��ѲSf:s��H��4#�0ĸG�G�1i���0�٘̽�n���w�����4GL5�`ic����R8��s³�#Yrb�:ɤ�If�(�yY�wl��c��X��N�<����c�3��ǩq˽���4)F�3LpA�L�1�"�?�rp҆�Tc��X�Hm������[�&����e��*N��N,� ,I���k�GQק����~.��l=ք�w�v=��\W��v|�[�×��Ȣ���$�@Q򸉔7��(j'Q����6u���vV�ԡ��l�^��x춳l�����4���S(��j1p��B�ˬ�*Q8��O�yK���bn�!�=�z�iG�p�v�����ߴ�>�U��y͹c}Ζ�e�JE��Kf�
���b�dB(	�ih���s777���m��}����ƞf�����F�K��RݔV,"�-5�L����TH��Ӄ�{��rs6�������y�A��
%#��� ��7��[Ah2C_�Y���x�MD�#=js���fy9n��ݡ���&�'���
�}�e�H�4��I��ҒY�<9����EW����6��W����i����}{MNێ��c��E��B����s!{��pL��:�S���/���tX��P�G�m���r��rd:)o_ zŸ
�X%[�8�3�. ����+8���kޑ�[����1ı��BgZ�t��:99���         x  x���M�1���)����8�=K�lA�ذ����G�hZTK,��ZծDꯟ�q9Kq�ވ�U���B/Y���|�C)@��ח��^?�|��5�<��	��>7�PĬ�\=�I-'L������wHm��|��v�O���b2���&+ԉ�A����oaޝ�[m�9�
<R����(����G>��>~y}�����+��.y�<��&p��?NK���ɏ�v׶5EZ�`��ޢ0��:K��V�\�`=��6�9[���Fp��u�]�X�#�_�;�9<z��s6�aT�_駮�>�z�����:�Z���"�R�6� ���|�@wхU8�{�Gˢ�ZF+n��Rp�9To�������-�����Y��`Xpk]�o�_���t#���r��N�6� �l}lV�V�\���}��&�"P���g���Lng�ZFV}���d��X�X���RC��Pu_x��[X��>�/4�s����`>z��a�K�G��ƈ��4��[�e��eR��P�m�v��}����^�q��~�5��U����OY�ȿ��4�"�Z.1ΉN?M��ny���=p���� ���ci���Z�:g�uq�{���+�lmqQ
���gd�F����{N������������~B�         �  x��V�N#G}n��?����O�J��f��奺��g�ذ"_��aM��L�m�g�\�T�ٚ��ڄu͋�.-WcPF�ٗi3��	�]��7�B?te�2�6���dT�oЏ�v�/��+�R;!����d�'c��uT�>:iʁ�D.�
�(E
!	�K3)�����n���=P���02��?����O���s<8��Z/CȲ ^%�+.��\a7S�yϗ�����k�=Ʀ���榞��a�{<^��s(��N��PDݜhE�蛱���+�A���vǶ�u?c3�h�?ە��i���7GB���U��$�� ��A���,�jd������P�}�|�e�Y��Ӏ�r>��n?�e$����P�@e�H�«�J�'��6�^��-uW�s,��/��̯Fr��<퇜�L&y�U[����VU�rV�9�x��w�����=Z=�����\6o�����X����mA
iU&�%[�E��>T�2�}���+���a�.M�?�-0�"�}��������~,G;kڂhQ<�)H{���b�b�����exui;802�?�mV���<��i>�Y#�eO��>���_mEՀ�h�������L[ر���f�X����a|������ӱQG����e)�(N�ytK��"��Dyp��#{\�n{=Ft�_lh`��#�f�#�����"�Wijٓ�Y_���,ٰ/8�}Ù�����_�;���%o�5Pح��{��\N[#qYZ����{�]�*�&'v��)��'�Bde��08͔K�������Hx�E��� mKxY/qܪɎn �v����`~d�6]9������`�_�����Q��$�F�
�qEW��P�jr��Ӟx�K�]���g�����/4�eS|(����.�bp_�"5��Q�˂����"Á��0��U����a�n���?�ȅV�։2�9:d%~�V�\�Y'��Q����өүG
�}7��Yr�/#?^�cY�\�$��4D�4�X�M"٘]â�e���g����[�,8���uU�Gӹ��i1�Ӌ�&�KQx����k��x�O��K�>Ced�z�✧y����@&�J$J#��*��4�ݼa�e"~��{6�u�x\b�8~=��*���Owrr��B#�     