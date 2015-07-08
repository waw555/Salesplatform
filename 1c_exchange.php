<?php
    require_once 'modules/SPCMLConnector/TransactionController.php';
    require_once 'include/utils/VtlibUtils.php';
    
    if(vtlib_isModuleActive("SPCMLConnector")) {
        $userName = $_SERVER['PHP_AUTH_USER'];
        $userPassword = $_SERVER['PHP_AUTH_PW'];
        $transactionController = new TransactionController($userName, $userPassword);
        $transactionStatus = $transactionController->startTransactionStep($_REQUEST);
        
        echo $transactionStatus;
    }
?>
