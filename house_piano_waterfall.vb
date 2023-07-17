Public Class UrbanOasis

'Declare Variables
Dim floatPrice As Single
Dim strName As String
Dim intQuantity As Integer
Dim intTotal As Integer

Sub Main()

'Set Price
floatPrice = 999.99

'Prompt user for name
Console.WriteLine("Please enter your name:")
strName = Console.ReadLine

'Prompt user for quantity
Console.WriteLine("Please enter the quantity of Urban Oasis:")
intQuantity = Console.ReadLine

'Calculate Total 
intTotal = floatPrice * intQuantity

'Print Receipt
Console.WriteLine("Thanks " & strName & " for purchasing " & intQuantity & " Urban Oasis for a total of " & intTotal & "!")

End Sub
End Class


Public Class UrbanOasis

    'Declare Variables
    Dim floatPrice As Single
    Dim strName As String
    Dim intQuantity As Integer
    Dim intTotal As Integer

    Sub Main()

        'Set Price
        floatPrice = 999.99

        'Prompt user for name
        Console.WriteLine("Please enter your name:")
        strName = Console.ReadLine

        'Prompt user for quantity
        Console.WriteLine("Please enter the quantity of Urban Oasis:")
        intQuantity = Console.ReadLine

        'Calculate Total 
        intTotal = floatPrice * intQuantity

        'Print Receipt
        Console.WriteLine("Thanks " & strName & " for purchasing " & intQuantity & " Urban Oasis for a total of " & intTotal & "!")

    End Sub

End Class

Public Class UrbanOasis

    'Declare Variables
    Dim floatPrice As Single
    Dim strName As String
    Dim intQuantity As Integer
    Dim intTotal As Integer

    Sub Main()

        'Set Price
        floatPrice = 999.99

        'Prompt user for name
        Console.WriteLine("Please enter your name:")
        strName = Console.ReadLine

        'Prompt user for quantity
        Console.WriteLine("Please enter the quantity of Urban Oasis:")
        intQuantity = Console.ReadLine

        'Calculate Total 
        intTotal = floatPrice * intQuantity

        'Print Receipt
        Console.WriteLine("Thanks " & strName & " for purchasing " & intQuantity & " Urban Oasis for a total of " & intTotal & "!")

        'Prompt user for shipping address
        Console.WriteLine("Please enter your shipping address:")
        strName = Console.ReadLine

        'Print Shipping Label
        Console.WriteLine("Ship to: " & strName)
        Console.WriteLine("Quantity: " & intQuantity)
    End Sub

End Class

Public Class UrbanOasis

    'Declare Variables
    Dim floatPrice As Single
    Dim strName As String
    Dim intQuantity As Integer
    Dim intTotal As Integer

    Sub Main()

        'Set Price
        floatPrice = 999.99

        'Prompt user for name
        Console.WriteLine("Please enter your name:")
        strName = Console.ReadLine

        'Prompt user for quantity
        Console.WriteLine("Please enter the quantity of Urban Oasis:")
        intQuantity = Console.ReadLine

        'Calculate Total 
        intTotal = floatPrice * intQuantity

        'Print Receipt
        Console.WriteLine("Thanks " & strName & " for purchasing " & intQuantity & " Urban Oasis for a total of " & intTotal & "!")

        'Prompt user for shipping address
        Console.WriteLine("Please enter your shipping address:")
        strName = Console.ReadLine

        'Print Shipping Label
        Console.WriteLine("Ship to: " & strName)
        Console.WriteLine("Quantity: " & intQuantity)

        'Prompt user for payment option
        Console.WriteLine("Please select a payment option:")
        intTotal = Console.ReadLine
        
        'Print Payment Receipt
        Console.WriteLine("Thanks " & strName & " for paying " & intTotal & " with for your Urban Oasis purchase.")
    End Sub

End Class

Public Class UrbanOasis

    'Declare Variables
    Dim floatPrice As Single
    Dim strName As String
    Dim intQuantity As Integer
    Dim intTotal As Integer
    Dim strPaymentOption As String
    Dim strShippingAddress As String

    Sub Main()

        'Set Price
        floatPrice = 999.99

        'Prompt user for name
        Console.WriteLine("Please enter your name:")
        strName = Console.ReadLine

        'Prompt user for quantity
        Console.WriteLine("Please enter the quantity of Urban Oasis:")
        intQuantity = Console.ReadLine

        'Calculate Total 
        intTotal = floatPrice * intQuantity

        'Print Receipt
        Console.WriteLine("Thanks " & strName & " for purchasing " & intQuantity & " Urban Oasis for a total of " & intTotal & "!")

        'Prompt user for shipping address
        Console.WriteLine("Please enter your shipping address:")
        strShippingAddress = Console.ReadLine

        'Print Shipping Label
        Console.WriteLine("Ship to: " & strShippingAddress)
        Console.WriteLine("Quantity: " & intQuantity)

        'Prompt user for payment option
        Console.WriteLine("Please select a payment option:")
        strPaymentOption = Console.ReadLine
        
        'Print Payment Receipt
        Console.WriteLine("Thanks " & strName & " for paying " & intTotal & " with " & strPaymentOption & " for your Urban Oasis purchase.")
    End Sub

End Class

Public Class UrbanOasis

    'Declare Variables
    Dim floatPrice As Single
    Dim strName As String
    Dim intQuantity As Integer
    Dim intTotal As Integer
    Dim strPaymentOption As String
    Dim strShippingAddress As String
    Dim dtOrderDate As Date

    Sub Main()

        'Set Price
        floatPrice = 999.99

        'Prompt user for name
        Console.WriteLine("Please enter your name:")
        strName = Console.ReadLine

        'Prompt user for quantity
        Console.WriteLine("Please enter the quantity of Urban Oasis:")
        intQuantity = Console.ReadLine

        'Calculate Total 
        intTotal = floatPrice * intQuantity

        'Print Receipt
        Console.WriteLine("Thanks " & strName & " for purchasing " & intQuantity & " Urban Oasis for a total of " & intTotal & "!")

        'Prompt user for shipping address
        Console.WriteLine("Please enter your shipping address:")
        strShippingAddress = Console.ReadLine

        'Print Shipping Label
        Console.WriteLine("Ship to: " & strShippingAddress)
        Console.WriteLine("Quantity: " & intQuantity)

        'Prompt user for payment option
        Console.WriteLine("Please select a payment option:")
        strPaymentOption = Console.ReadLine
        
        'Print Payment Receipt
        Console.WriteLine("Thanks " & strName & " for paying " & intTotal & " with " & strPaymentOption & " for your Urban Oasis purchase.")

        'Set Order Date
        dtOrderDate = Now()

        'Print Order Date
        Console.WriteLine("Order placed on " & dtOrderDate)
    End Sub

End Class