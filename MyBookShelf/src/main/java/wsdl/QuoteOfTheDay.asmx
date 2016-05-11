<?xml version="1.0" encoding="utf-8"?>
<wsdl:definitions xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:tns="http://swanandmokashi.com" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" targetNamespace="http://swanandmokashi.com" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
  <wsdl:types>
    <s:schema elementFormDefault="qualified" targetNamespace="http://swanandmokashi.com">
      <s:element name="GetQuote">
        <s:complexType />
      </s:element>
      <s:element name="GetQuoteResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="1" maxOccurs="1" name="GetQuoteResult" type="tns:Quotes" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="Quotes">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="QuoteOfTheDay" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Author" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="Quotes" type="tns:Quotes" />
    </s:schema>
  </wsdl:types>
  <wsdl:message name="GetQuoteSoapIn">
    <wsdl:part name="parameters" element="tns:GetQuote" />
  </wsdl:message>
  <wsdl:message name="GetQuoteSoapOut">
    <wsdl:part name="parameters" element="tns:GetQuoteResponse" />
  </wsdl:message>
  <wsdl:message name="GetQuoteHttpGetIn" />
  <wsdl:message name="GetQuoteHttpGetOut">
    <wsdl:part name="Body" element="tns:Quotes" />
  </wsdl:message>
  <wsdl:message name="GetQuoteHttpPostIn" />
  <wsdl:message name="GetQuoteHttpPostOut">
    <wsdl:part name="Body" element="tns:Quotes" />
  </wsdl:message>
  <wsdl:portType name="QuoteofTheDaySoap">
    <wsdl:operation name="GetQuote">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a funny random quote and its author.</wsdl:documentation>
      <wsdl:input message="tns:GetQuoteSoapIn" />
      <wsdl:output message="tns:GetQuoteSoapOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="QuoteofTheDayHttpGet">
    <wsdl:operation name="GetQuote">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a funny random quote and its author.</wsdl:documentation>
      <wsdl:input message="tns:GetQuoteHttpGetIn" />
      <wsdl:output message="tns:GetQuoteHttpGetOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="QuoteofTheDayHttpPost">
    <wsdl:operation name="GetQuote">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a funny random quote and its author.</wsdl:documentation>
      <wsdl:input message="tns:GetQuoteHttpPostIn" />
      <wsdl:output message="tns:GetQuoteHttpPostOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:binding name="QuoteofTheDaySoap" type="tns:QuoteofTheDaySoap">
    <soap:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="GetQuote">
      <soap:operation soapAction="http://swanandmokashi.com/GetQuote" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="QuoteofTheDaySoap12" type="tns:QuoteofTheDaySoap">
    <soap12:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="GetQuote">
      <soap12:operation soapAction="http://swanandmokashi.com/GetQuote" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="QuoteofTheDayHttpGet" type="tns:QuoteofTheDayHttpGet">
    <http:binding verb="GET" />
    <wsdl:operation name="GetQuote">
      <http:operation location="/GetQuote" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="QuoteofTheDayHttpPost" type="tns:QuoteofTheDayHttpPost">
    <http:binding verb="POST" />
    <wsdl:operation name="GetQuote">
      <http:operation location="/GetQuote" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:service name="QuoteofTheDay">
    <wsdl:port name="QuoteofTheDaySoap" binding="tns:QuoteofTheDaySoap">
      <soap:address location="http://www.swanandmokashi.com/HomePage/WebServices/QuoteOfTheDay.asmx" />
    </wsdl:port>
    <wsdl:port name="QuoteofTheDaySoap12" binding="tns:QuoteofTheDaySoap12">
      <soap12:address location="http://www.swanandmokashi.com/HomePage/WebServices/QuoteOfTheDay.asmx" />
    </wsdl:port>
    <wsdl:port name="QuoteofTheDayHttpGet" binding="tns:QuoteofTheDayHttpGet">
      <http:address location="http://www.swanandmokashi.com/HomePage/WebServices/QuoteOfTheDay.asmx" />
    </wsdl:port>
    <wsdl:port name="QuoteofTheDayHttpPost" binding="tns:QuoteofTheDayHttpPost">
      <http:address location="http://www.swanandmokashi.com/HomePage/WebServices/QuoteOfTheDay.asmx" />
    </wsdl:port>
  </wsdl:service>
</wsdl:definitions>