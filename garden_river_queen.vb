Public Class UrbanOasis
  
  'Declare Constants
  Const MAX_TEMPERATURE As Integer = 100
  Const MIN_TEMPERATURE As Integer = 0
  Const MAX_LIGHT_LEVEL As Integer = 1000
  Const MIN_LIGHT_LEVEL As Integer = 0
  Const MAX_HUMIDITY As Integer = 100
  Const MIN_HUMIDITY As Integer = 0
  
  'Declare Private Variables
  Private shedRate As Integer
  Private waterAmount As Integer
  Private temperature As Integer
  Private lightLevel As Integer
  Private humidity As Integer
  
  'Declare Class Variables
  Public flora As Collection
  Public fauna As Collection
  
  'Urban Oasis Constructor
  Public Sub New(shedRate As Integer, waterAmount As Integer, temperature As Integer,
                  lightLevel As Integer, humidity As Integer)
    Me.shedRate = shedRate
    Me.waterAmount = waterAmount
    Me.temperature = temperature
    Me.lightLevel = lightLevel
    Me.humidity = humidity
    
    'Instantiate flora and fauna collections
    flora = New Collection
    fauna = New Collection
  End Sub
  
  'Setter Methods
  Public Sub setShedRate(rate As Integer)
    Me.shedRate = rate
  End Sub
  
  Public Sub setWaterAmount(amount As Integer)
    Me.waterAmount = amount
  End Sub
  
  Public Sub setTemperature(temp As Integer)
    If temp > MAX_TEMPERATURE Then
      Me.temperature = MAX_TEMPERATURE
    ElseIf temp < MIN_TEMPERATURE Then
      Me.temperature = MIN_TEMPERATURE
    Else
      Me.temperature = temp
    End If
  End Sub
  
  Public Sub setLightLevel(level As Integer)
    If level > MAX_LIGHT_LEVEL Then
      Me.lightLevel = MAX_LIGHT_LEVEL
    ElseIf level < MIN_LIGHT_LEVEL Then
      Me.lightLevel = MIN_LIGHT_LEVEL
    Else
      Me.lightLevel = level
    End If
  End Sub
  
  Public Sub setHumidity(hum As Integer)
    If hum > MAX_HUMIDITY Then
      Me.humidity = MAX_HUMIDITY
    ElseIf hum < MIN_HUMIDITY Then
      Me.humidity = MIN_HUMIDITY
    Else
      Me.humidity = hum
    End If
  End Sub
  
  'Getter Methods
  Public Function getShedRate() As Integer
    Return Me.shedRate
  End Function
  
  Public Function getWaterAmount() As Integer
    Return Me.waterAmount
  End Function
  
  Public Function getTemperature() As Integer
    Return Me.temperature
  End Function
  
  Public Function getLightLevel() As Integer
    Return Me.lightLevel
  End Function
  
  Public Function getHumidity() As Integer
    Return Me.humidity
  End Function
  
  'Other Methods
  Public Sub addFlora(flora As Flora)
    Me.flora.Add(flora)
  End Sub
  
  Public Sub removeFlora(flora As Flora)
    Me.flora.Remove(flora)
  End Sub
  
  Public Sub addFauna(fauna As Fauna)
    Me.fauna.Add(fauna)
  End Sub
  
  Public Sub removeFauna(fauna As Fauna)
    Me.fauna.Remove(fauna)
  End Sub
  
  Public Sub waterPlants()
    For Each plant As Flora In Me.flora
      plant.water()
    Next
  End Sub
  
  Public Sub prunePlants()
    For Each plant As Flora In Me.flora
      If plant.getSize() > plant.getMaxSize() Then
        plant.prune()
      End If
    Next
  End Sub
  
  Public Sub feedFauna()
    For Each critter As Fauna In Me.fauna
      critter.feed()
    Next
  End Sub
  
  Public Sub checkShedRate()
    For Each critter As Fauna In Me.fauna
      If critter.getShedRate() > Me.shedRate Then
        critter.shed()
      End If
    Next
  End Sub
  
  Public Sub adjustLightLevel()
    If Me.lightLevel > Me.flora(0).getMaxLightLevel() Then
      Me.lightLevel = Me.flora(0).getMaxLightLevel()
    End If
  End Sub
  
  Public Sub adjustHumidity()
    If Me.humidity < Me.fauna(0).getMinHumidity() Then
      Me.humidity = Me.fauna(0).getMinHumidity()
    End If
  End Sub
  
End Class