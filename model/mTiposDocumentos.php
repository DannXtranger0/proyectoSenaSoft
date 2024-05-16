<?php
class ModelTiposDocumentos{
    private $db;
    public function __construct(){
        require_once("config/Db.php");
        $this->db = Db::Conectar();
    }

    public function comboTiposDocuemntos(){
        $stmt = $this->db->prepare("SELECT * FROM tipos_documentos");
        return ($stmt ->execute()) ? $stmt->fetchAll(PDO::FETCH_ASSOC) : false;
    }
}
?>