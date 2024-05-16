<?php 
    class ControllerTiposDocumentos{
        private $modelTiposDocumentos;
        public function __construct(){
            require_once("model/mTiposDocumentos.php");
            $this->modelTiposDocumentos = new ModelTiposDocumentos();
        }

        public function comboTiposDocuemntos(){
            return $this->modelTiposDocumentos->comboTiposDocuemntos();
        }


    }
?>