<?php
    class ModelMujeres{
        private $db;

        public function __construct(){
            require_once("config/Db.php");
            $this->db = Db::Conectar(); 
        }

        public function insertar($tipoDocumento, $nombre,){

        }

    
    }
?>