class Soap
  extend Savon::Model

  document "http://www.webservicex.net/CurrencyConvertor.asmx?WSDL"

  def convert
    response = client.request 'http://www.webserviceX.NET/ConversionRate' do
      soap.input = ['ConversionRate', {'xmlns' => 'http://www.webserviceX.NET/'}]
      soap.body = '<FromCurrency>USD</FromCurrency><ToCurrency>INR</ToCurrency>'
    end
    response[:conversion_rate_response][:conversion_rate_result]
  end
end
