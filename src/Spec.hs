module Spec where
import PdePreludat
import Library
import Test.Hspec

correrTests :: IO ()
correrTests = hspec $ do
  describe "presionGolpe " $ do
    it " la presion del Golpe con 200 horas de entrenamiento sobre una bolsa de entrenamiento es de 68" $ do
      presionGolpe 200 "bolsa de entrenamiento" `shouldBe` 68.181818182
  describe "gomuGomu" $ do
    it "el Golpe gomu gomu elephant gatling  ejerce una presión de 61 sobre la bolsa de entrenamiento" $ do
      gomuGomu "bolsa de entrenamiento" `shouldBe` 61.363636364
    describe "normalesConsecutivos" $ do
    it "el Golpe normalesConsecutivos  ejerce una presión de 81 sobre la bolsa de entrenamiento"  $ do
      normalesConsecutivos  "bolsa de entrenamiento"  `shouldBe` 81.818181818
  describe "objetivoEsDificil " $ do
    it "El objetivo es dificil cuando la técnica de gomu gomu elephant gatling efectúa una presión menor a 100" $ do
      objetivoEsDificil "bolsa de entrenamiento"  `shouldBe` True
  describe "objetivoEsDificil " $ do
    it "El objetivo  NO es dificil cuando la técnica de gomu gomu elephant gatling efectúa una presión menor a 100" $ do
      objetivoEsDificil "puf"  `shouldBe` False
  describe "objetivoFocalizado" $ do
    it "Focalizar un objetivo implica quedarse con las primeras 7 letras de su nombre" $ do
      objetivoFocalizado "bolsa de entrenamiento" `shouldBe` "bolsa d"

  describe "objetivoEsAccecible" $ do
    it "El objetivo es Accesible si la presión que ofrece unos golpes normales consecutivos cuando se focaliza, el objetivo está entre 200 y 400" $ do
      objetivoEsAccecible "bolsa de entrenamiento"  `shouldBe` True
  describe "objetivoEsAccecible " $ do
    it "El objetivo NO es Accesible si la presión que ofrece unos golpes normales consecutivos cuando se focaliza, el objetivo está entre 200 y 400" $ do
      objetivoEsAccecible "puf"  `shouldBe` False