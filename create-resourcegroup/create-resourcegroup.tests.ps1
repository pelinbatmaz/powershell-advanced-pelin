Describe "Azure Resource Group Test" {

   BeforeAll{
          $ResourceGroupName = "PelinLM2DebugRG"

   }

   It "Verifies that the resource group was created"{
     $ResourceGroup = Get-AzResourceGroup -Name $ResourceGroupName -ErrorAction SilentlyContinue
     $ResourceGroup | Should -Not -BeNullOrEmpty
     $ResourceGroup.ResourceGroupName | Should -Be $ResourceGroupName
   }

}

