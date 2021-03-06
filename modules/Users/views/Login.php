<?php
/*+**********************************************************************************
 * The contents of this file are subject to the vtiger CRM Public License Version 1.1
 * ("License"); You may not use this file except in compliance with the License
 * The Original Code is:  vtiger CRM Open Source
 * The Initial Developer of the Original Code is vtiger.
 * Portions created by vtiger are Copyright (C) vtiger.
 * All Rights Reserved.
 ************************************************************************************/

class Users_Login_View extends Vtiger_View_Controller {

	function loginRequired() {
		return false;
	}
	
	function checkPermission(Vtiger_Request $request) {
		return true;
	}
	
	function preProcess(Vtiger_Request $request, $display = true) {
		$viewer = $this->getViewer($request);
                // Salesplatform begin renamed pagetitle
                $viewer->assign('PAGETITLE', 'ООО "Евролок Проект"');
		//$viewer->assign('PAGETITLE', $this->getPageTitle($request));
                // Salesplatform end
		$viewer->assign('SCRIPTS',$this->getHeaderScripts($request));
		$viewer->assign('STYLES',$this->getHeaderCss($request));
		$viewer->assign('CURRENT_VERSION', vglobal('vtiger_current_version'));
		if($display) {
			$this->preProcessDisplay($request);
		}
	}

	function process (Vtiger_Request $request) {
		$viewer = $this->getViewer($request);
		$moduleName = $request->getModule();
		
		$viewer->assign('MODULE', $moduleName);
		$viewer->assign('CURRENT_VERSION', vglobal('vtiger_current_version'));
		$viewer->view('Login.tpl', 'Users');
}
}
