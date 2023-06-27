PGDMP     %                    {            titos_hotel    15.3    15.3 "    .           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            /           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            0           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            1           1262    16480    titos_hotel    DATABASE     �   CREATE DATABASE titos_hotel WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE titos_hotel;
                postgres    false            �            1259    16546    alocacao_area_lazer    TABLE     �   CREATE TABLE public.alocacao_area_lazer (
    id_alocacao_area_lazer integer NOT NULL,
    rg_cliente integer,
    id_area_lazer integer,
    data_alocacao date
);
 '   DROP TABLE public.alocacao_area_lazer;
       public         heap    postgres    false            �            1259    16526    alocacao_quarto    TABLE     �   CREATE TABLE public.alocacao_quarto (
    id_alocacao_quarto integer NOT NULL,
    rg_cliente integer,
    id_quarto integer
);
 #   DROP TABLE public.alocacao_quarto;
       public         heap    postgres    false            �            1259    16541 
   area_lazer    TABLE     c   CREATE TABLE public.area_lazer (
    id_area_lazer integer NOT NULL,
    ultima_manutencao date
);
    DROP TABLE public.area_lazer;
       public         heap    postgres    false            �            1259    16488    cliente    TABLE     �   CREATE TABLE public.cliente (
    rg_cliente integer NOT NULL,
    fone_cliente character varying,
    nascimento date,
    nome character varying
);
    DROP TABLE public.cliente;
       public         heap    postgres    false            �            1259    16481    fone_cliente    TABLE     R   CREATE TABLE public.fone_cliente (
    fone_cliente character varying NOT NULL
);
     DROP TABLE public.fone_cliente;
       public         heap    postgres    false            �            1259    16500 	   fone_func    TABLE     L   CREATE TABLE public.fone_func (
    fone_func character varying NOT NULL
);
    DROP TABLE public.fone_func;
       public         heap    postgres    false            �            1259    16507    funcionario    TABLE     �   CREATE TABLE public.funcionario (
    matricula_func integer NOT NULL,
    fone_func character varying,
    nome character varying,
    data_de_admissao date
);
    DROP TABLE public.funcionario;
       public         heap    postgres    false            �            1259    16519    quarto    TABLE     �   CREATE TABLE public.quarto (
    id_quarto integer NOT NULL,
    preco double precision,
    qtd_camas integer,
    tipo_cama character varying,
    tipo_quarto character varying
);
    DROP TABLE public.quarto;
       public         heap    postgres    false            +          0    16546    alocacao_area_lazer 
   TABLE DATA                 public          postgres    false    221   	&       )          0    16526    alocacao_quarto 
   TABLE DATA                 public          postgres    false    219   	'       *          0    16541 
   area_lazer 
   TABLE DATA                 public          postgres    false    220   �'       %          0    16488    cliente 
   TABLE DATA                 public          postgres    false    215   |(       $          0    16481    fone_cliente 
   TABLE DATA                 public          postgres    false    214   �)       &          0    16500 	   fone_func 
   TABLE DATA                 public          postgres    false    216   �*       '          0    16507    funcionario 
   TABLE DATA                 public          postgres    false    217   +       (          0    16519    quarto 
   TABLE DATA                 public          postgres    false    218   P,       �           2606    16550 ,   alocacao_area_lazer alocacao_area_lazer_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.alocacao_area_lazer
    ADD CONSTRAINT alocacao_area_lazer_pkey PRIMARY KEY (id_alocacao_area_lazer);
 V   ALTER TABLE ONLY public.alocacao_area_lazer DROP CONSTRAINT alocacao_area_lazer_pkey;
       public            postgres    false    221            �           2606    16530 $   alocacao_quarto alocacao_quarto_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.alocacao_quarto
    ADD CONSTRAINT alocacao_quarto_pkey PRIMARY KEY (id_alocacao_quarto);
 N   ALTER TABLE ONLY public.alocacao_quarto DROP CONSTRAINT alocacao_quarto_pkey;
       public            postgres    false    219            �           2606    16545    area_lazer area_lazer_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.area_lazer
    ADD CONSTRAINT area_lazer_pkey PRIMARY KEY (id_area_lazer);
 D   ALTER TABLE ONLY public.area_lazer DROP CONSTRAINT area_lazer_pkey;
       public            postgres    false    220            �           2606    16494    cliente cliente_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (rg_cliente);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public            postgres    false    215            �           2606    16487    fone_cliente fone_cliente_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.fone_cliente
    ADD CONSTRAINT fone_cliente_pkey PRIMARY KEY (fone_cliente);
 H   ALTER TABLE ONLY public.fone_cliente DROP CONSTRAINT fone_cliente_pkey;
       public            postgres    false    214            �           2606    16506    fone_func fone_func_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.fone_func
    ADD CONSTRAINT fone_func_pkey PRIMARY KEY (fone_func);
 B   ALTER TABLE ONLY public.fone_func DROP CONSTRAINT fone_func_pkey;
       public            postgres    false    216            �           2606    16513    funcionario funcionario_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT funcionario_pkey PRIMARY KEY (matricula_func);
 F   ALTER TABLE ONLY public.funcionario DROP CONSTRAINT funcionario_pkey;
       public            postgres    false    217            �           2606    16525    quarto quarto_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.quarto
    ADD CONSTRAINT quarto_pkey PRIMARY KEY (id_quarto);
 <   ALTER TABLE ONLY public.quarto DROP CONSTRAINT quarto_pkey;
       public            postgres    false    218            �           2606    16556 :   alocacao_area_lazer alocacao_area_lazer_id_area_lazer_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.alocacao_area_lazer
    ADD CONSTRAINT alocacao_area_lazer_id_area_lazer_fkey FOREIGN KEY (id_area_lazer) REFERENCES public.area_lazer(id_area_lazer);
 d   ALTER TABLE ONLY public.alocacao_area_lazer DROP CONSTRAINT alocacao_area_lazer_id_area_lazer_fkey;
       public          postgres    false    221    3213    220            �           2606    16551 7   alocacao_area_lazer alocacao_area_lazer_rg_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.alocacao_area_lazer
    ADD CONSTRAINT alocacao_area_lazer_rg_cliente_fkey FOREIGN KEY (rg_cliente) REFERENCES public.cliente(rg_cliente);
 a   ALTER TABLE ONLY public.alocacao_area_lazer DROP CONSTRAINT alocacao_area_lazer_rg_cliente_fkey;
       public          postgres    false    3203    221    215            �           2606    16536 .   alocacao_quarto alocacao_quarto_id_quarto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.alocacao_quarto
    ADD CONSTRAINT alocacao_quarto_id_quarto_fkey FOREIGN KEY (id_quarto) REFERENCES public.quarto(id_quarto);
 X   ALTER TABLE ONLY public.alocacao_quarto DROP CONSTRAINT alocacao_quarto_id_quarto_fkey;
       public          postgres    false    3209    218    219            �           2606    16531 /   alocacao_quarto alocacao_quarto_rg_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.alocacao_quarto
    ADD CONSTRAINT alocacao_quarto_rg_cliente_fkey FOREIGN KEY (rg_cliente) REFERENCES public.cliente(rg_cliente);
 Y   ALTER TABLE ONLY public.alocacao_quarto DROP CONSTRAINT alocacao_quarto_rg_cliente_fkey;
       public          postgres    false    3203    215    219            �           2606    16495 !   cliente cliente_fone_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_fone_cliente_fkey FOREIGN KEY (fone_cliente) REFERENCES public.fone_cliente(fone_cliente);
 K   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_fone_cliente_fkey;
       public          postgres    false    214    3201    215            �           2606    16514 &   funcionario funcionario_fone_func_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT funcionario_fone_func_fkey FOREIGN KEY (fone_func) REFERENCES public.fone_func(fone_func);
 P   ALTER TABLE ONLY public.funcionario DROP CONSTRAINT funcionario_fone_func_fkey;
       public          postgres    false    217    216    3205            +   �   x��һj1��~�B�X��ь.�J�b!8;i���,8���s�� e�I�ǯ�L�����������,��m]�s���X/�z\�����{��щ�͒F��JH�'�l���0�����
f����EO=\ G����9�:����"D���:�:8�a����췎�3upu1V��b�^����_��#�F�Z]�;����4$CZn\���pB�-3�J{l��:8�?����*H�Z�a�o��      )   �   x���?�@��F�Cr�����С ����I(T�~������G������t��`�m���2�c�|}.����e�?��Y9k�Y�$�ָ�����l�W����H��}	��Q�B�'��8_�p���I��[�̨KȚX���ً��%R��L.irX"�aG?�x�| ���      *   �   x��ѱ
�0��=O��
�\.Ikpr��
��J*�Rp��Mz�k� ?�_.���� }7\��3ί�>,Sx��;-�~:��^n�NV�9X��j{>�Qt�����;�N�Q�3�h���4Ĥ*���DZr����8�d�]�z��cפ{b��������S��      %   p  x����N�0F�>���D����bB�H�ڂH��fRK�(J�^������Hq�;��󹟧�f�"���|_w��nw���%����!��5W(��X���Z��@����8�]~#K��/oF����ʄ�:�����,����W(��h��[S
	\H`	*b`�*!��4�د���x� y"J����(S�t��q���Ē��de۝�t��؂��i:$;V�� �V����ݑ������k�)�*�����
Fذ���[g|)QcX�DeHϭ�!0V�m�߄��ol�*4�L�:���o�\�:N�ּ�R&UB�ܶ�W���X�A��w�L
���Oq�0�N�~d�J�ס�Ċ��f���]k#v4��}��      $   �   x���v
Q���W((M��L�K��K�O��L�+IUs�	uV�P755426153W״��$^�������1��LA�������HuA�eA�.��Hu���!av���.���uH �L�-      &   v   x���v
Q���W((M��L�K��K�O+�KVs�	uV�P7100��42R״��$J���������:,��LM��I��؈D;����&��a�	vX@�x��$�@��� 8��      '   -  x����n�0E�|�w�R��1[]EU�R5i��U��Pd����w�2�a�s8�z��~�;�|{xgg�Ә��׵��m�˾Vo��=�,�9�B��U�i��h� d��H���)�o#
�q�fj$��������A��I,A���}����l�ib�۱1iJ�5?��tM�Φ0��$O��W��{4�g��쮪"�">�)q)����Nx�5�����seT���%��dk�0Sy���
E�jڂ��*�)��.D��A�8��B+�O�X�%�>�
NT���ן�p��N���b���      (   �   x���v
Q���W((M��L�+,M,*�Ws�	uV�0�Q045�Q0�QP/��)I�,�W�K�R�R�5��<	��md4h�zrbqbȈ�ԜҊT�0�Q06 `B�3��M@�1&��T	3�)�A��Tq�� c,��$�@��y�� ��� g/��     