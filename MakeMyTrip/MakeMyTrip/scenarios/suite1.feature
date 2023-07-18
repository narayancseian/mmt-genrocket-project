Feature: Demo
  I want to use this template for my feature file

Background:
Given User launches the website
	
@enabled:false
Scenario: TC_01: User Close the Advertisement
		Then User Close the Advertisement
	  
@enabled:true
@datafile: 'resources/testdata/TrainTicketBooking.xlsx'
Scenario: TC_02: User Enter Train Details
		When User Select Train Option
		Then User Click on Book Train Tickets
		Then User Click on From
		Then User Select From City using '${From}'
		Then User Click on To
		Then User Select To City using '${To}'
		Then User Click on Travel Date
	  Then User Select Travel Date using '${TravelDate}'
	  Then User Click on Class
	  Then User Select Class using '${Class}'
	  And User Click on Search
	  
@enabled:false
@datafile: 'resources/testdata/PnrTable.xlsx'
Scenario: TC_03: User Check PNR Status
	  When User Click on Check PNR Status
	  Then User Enter PNR Number using '${PNR}'
	  And User Click on Check Status
	  
@enabled:false
@datafile: 'resources/testdata/LiveTrainStatus.xlsx'
Scenario: TC_04: User Check Live Train Status
	  When User Click on Live Train Status
	  Then User Enter Train Name using '${trainName}'
#	  Then User Enter Train Number using '${trainNumber}'
	  Then User Select Train Start Date Using '${TrainStartDate}'
	  Then User Select There Stop
	  And User Click on Train Check Status
	  
@enabled:false
@datafile: 'resources/testdata/OneWayFlightTicketBooking.xlsx'
Scenario: TC_05: User Book International and Domestic Flights for OneWay
	  When User Select Flights Option
	  Then User Select One Way
	  Then User Click on From City
	  Then User Enter From City using '${From}'
	  Then User Click on To City
	  Then User Enter To City using '${To}'
	  Then User Click on Departure Date
	  Then User Select Flights Departure Date using '${DepartureDate}'
	  Then User Click on TravellrsClass
	  Then User Select Flights Travel Adults,Children,Infants and Class using '${Adults}', '${Children}', '${Infants}' and '${Class}'
	  Then User Travel&Class Apply
	  Then User Select a Fare Type using '${FareType}'
	  And User Click on Flight Search

@enabled:false
Scenario: TC_05: User Book International and Domestic Flights for OneWay
	  When User Select Flights Option
	  Then User Select One Way
	  Then User Click on From City
	  Then User Select Flight From City
	  Then User Click on To City
	  Then User Select Flight To City
	  Then User Click on Departure Date
	  Then User Select Flights Departure Date
	  Then User Click on TravellrsClass
	  Then User Select Flights Travel Adults,Children,Infants and Class
	  Then User Travel&Class Apply
	  Then User Select a Fare Type
    And User Click on Flight Search
	  
@enabled:False
@datafile: 'resources/testdata/RoundTripFlightTicketBooking.xlsx'
Scenario: TC_06: User Book International and Domestic Flights for RoundTrip
	  When User Select Flights RT Option
	  Then User Select Round Trip
	  Then User Select Flights RT City using '${From_City}' and '${To_City}'
	  Then User Select Flights RT Departure Date using '${DepartureDate}'
	  Then User Select Flights RT Return Date using '${ReturnDate}'
	  Then User Select Flights RT Travel Adults,Children,Infants and Class using '${Adults}', '${Children}', '${Infants}' and '${Class}'
	  Then User Travel&Class RT Apply
	  Then User Select a RT Fare Type using '${FareType}'
	  And User Click on RT Flight Search
	  
@enabled:false
Scenario: TC_06: User Book International and Domestic Flights for RoundTrip
	  Then User Select Flights using Database

@enabled:false
@datafile: 'resources/testdata/MultiCityFlightTicketBooking.csv'
Scenario: TC_07: User Book International and Domestic Flights for Multi City
	  When User Select Flights Option
	  Then User Select Multi City
	  Then User Click on From City
	  Then User Enter From City using '${From}'
	  Then User Click on To City
	  Then User Enter To City using '${To}'
	  Then User Click on Departure Date
	  Then User Select Flights Departure Date using '${DepartureDate}'
	  Then User Click on Travell and Class
	  Then User Select Flights Travel Adults,Children,Infants and Class using '${Adults}', '${Children}', '${Infants}' and '${Class}'
	  Then User Travel&Class Apply
	  Then User Click on SecondFrom City
	  Then User Enter From City using '${From1}'
	  Then User Click on SecondTo City
	  Then User Enter To City using '${To1}'
	  Then User Click on SecondDepartureDate
	  Then User Select Flights Departure Date using '${DepartureDate1}'
		Then User Select a Fare Type using '${FareType}'
	  And User Click on Flight Search