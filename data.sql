INSERT INTO
    airlines (id, name)
VALUES (1, 'American Airlines'),
    (2, 'Delta Air Lines'),
    (3, 'United Airlines'),
    (4, 'Southwest Airlines'),
    (5, 'Air Canada'),
    (6, 'British Airways'),
    (7, 'Lufthansa'),
    (8, 'Air France'),
    (9, 'Emirates'),
    (10, 'Qatar Airways'),
    (11, 'Singapore Airlines'),
    (12, 'Cathay Pacific'),
    (13, 'Qantas'),
    (14, 'Aeromexico'),
    (15, 'Alaska Airlines'),
    (16, 'JetBlue'),
    (17, 'Ryanair'),
    (18, 'EasyJet'),
    (19, 'Turkish Airlines'),
    (20, 'KLM');

INSERT INTO
    countries (id, name)
VALUES ('US', 'United States'),
    ('CA', 'Canada'),
    ('GB', 'United Kingdom'),
    ('FR', 'France'),
    ('DE', 'Germany'),
    ('JP', 'Japan'),
    ('AU', 'Australia'),
    ('BR', 'Brazil'),
    ('IN', 'India'),
    ('CN', 'China'),
    ('RU', 'Russia'),
    ('ZA', 'South Africa'),
    ('MX', 'Mexico'),
    ('IT', 'Italy'),
    ('ES', 'Spain'),
    ('NL', 'Netherlands'),
    ('KR', 'South Korea'),
    ('TR', 'Turkey'),
    ('SA', 'Saudi Arabia'),
    ('SG', 'Singapore');

INSERT INTO
    documenttypes (id, name)
VALUES (1, 'Passport'),
    (2, 'Driver License'),
    (3, 'National ID'),
    (4, 'Visa'),
    (5, 'Residence Permit'),
    (6, 'Birth Certificate'),
    (7, 'Student ID'),
    (8, 'Military ID'),
    (9, 'Health Insurance Card'),
    (10, 'Employee ID'),
    (11, 'Temporary ID'),
    (12, 'Work Permit'),
    (13, 'Travel Document'),
    (14, 'Refugee Document'),
    (15, 'Diplomatic Passport'),
    (16, "Seaman's Book"),
    (17, 'Foreigner ID'),
    (18, 'Voter ID'),
    (19, 'Police ID'),
    (20, 'Civil ID');

INSERT INTO
    flightfares (
        id,
        description,
        details,
        value
    )
VALUES (
        1,
        'Economy Basic',
        'Non-refundable',
        100.00
    ),
    (
        2,
        'Economy Standard',
        'Refundable with fee',
        150.00
    ),
    (
        3,
        'Economy Flex',
        'Fully refundable',
        200.00
    ),
    (
        4,
        'Premium Economy',
        'Extra legroom and amenities',
        300.00
    ),
    (
        5,
        'Business Class Basic',
        'Non-refundable',
        500.00
    ),
    (
        6,
        'Business Class Flex',
        'Fully refundable',
        700.00
    ),
    (
        7,
        'First Class Basic',
        'Non-refundable',
        1000.00
    ),
    (
        8,
        'First Class Flex',
        'Fully refundable',
        1500.00
    ),
    (
        9,
        'Super Saver',
        'No luggage included',
        80.00
    ),
    (
        10,
        'Standard Saver',
        'Includes 1 checked bag',
        120.00
    ),
    (
        11,
        'Flexible Saver',
        'Includes 2 checked bags',
        180.00
    ),
    (
        12,
        'Business Saver',
        'Includes lounge access',
        400.00
    ),
    (
        13,
        'First Saver',
        'Includes premium lounge access',
        1200.00
    ),
    (
        14,
        'Economy Discount',
        'Special promotion',
        90.00
    ),
    (
        15,
        'Economy Extra',
        'Includes meal',
        130.00
    ),
    (
        16,
        'Business Extra',
        'Includes gourmet meal',
        550.00
    ),
    (
        17,
        'First Extra',
        'Includes luxury meal',
        1600.00
    ),
    (
        18,
        'Economy Promo',
        'Limited-time offer',
        110.00
    ),
    (
        19,
        'Business Promo',
        'Limited-time offer',
        600.00
    ),
    (
        20,
        'First Promo',
        'Limited-time offer',
        1400.00
    );

INSERT INTO
    manufacturers (id, name)
VALUES (1, 'Boeing'),
    (2, 'Airbus'),
    (3, 'Embraer'),
    (4, 'Bombardier'),
    (5, 'Lockheed Martin'),
    (6, 'Northrop Grumman'),
    (7, 'Gulfstream Aerospace'),
    (8, 'Cessna'),
    (9, 'Beechcraft'),
    (10, 'Dassault Aviation'),
    (
        11,
        'Mitsubishi Aircraft Corporation'
    ),
    (12, 'ATR'),
    (13, 'COMAC'),
    (14, 'Antonov'),
    (15, 'Irkut'),
    (16, 'Pilatus Aircraft'),
    (17, 'Textron Aviation'),
    (18, 'De Havilland Canada'),
    (19, 'Sukhoi'),
    (20, 'Saab');

INSERT INTO
    statuses (id, name)
VALUES (1, 'Active'),
    (2, 'Inactive'),
    (3, 'Maintenance'),
    (4, 'Grounded'),
    (5, 'Decommissioned'),
    (6, 'Under Repair'),
    (7, 'Operational'),
    (8, 'Out of Service'),
    (9, 'Reserved'),
    (10, 'In Flight'),
    (11, 'On Hold'),
    (12, 'Delayed'),
    (13, 'Cancelled'),
    (14, 'Scheduled'),
    (15, 'Boarding'),
    (16, 'Landed'),
    (17, 'Diverted'),
    (18, 'Awaiting Parts'),
    (19, 'Test Flight'),
    (20, 'Stored');

INSERT INTO
    trips (id, trip_date, price_tripe)
VALUES (1, '2023-01-01', 300.00),
    (2, '2023-02-15', 450.00),
    (3, '2023-03-20', 600.00),
    (4, '2023-04-10', 350.00),
    (5, '2023-05-25', 700.00),
    (6, '2023-06-30', 800.00),
    (7, '2023-07-04', 400.00),
    (8, '2023-08-16', 550.00),
    (9, '2023-09-05', 500.00),
    (10, '2023-10-10', 650.00),
    (11, '2023-11-20', 750.00),
    (12, '2023-12-25', 850.00),
    (13, '2024-01-01', 300.00),
    (14, '2024-02-14', 450.00),
    (15, '2024-03-20', 600.00),
    (16, '2024-04-10', 350.00),
    (17, '2024-05-25', 700.00),
    (18, '2024-06-30', 800.00),
    (19, '2024-07-04', 400.00),
    (20, '2024-08-15', 550.00);

INSERT INTO
    tripulationroles (id, name)
VALUES (1, 'Pilot'),
    (2, 'Co-Pilot'),
    (3, 'Flight Attendant'),
    (4, 'Chief Flight Attendant'),
    (5, 'Purser'),
    (6, 'Flight Engineer'),
    (7, 'Navigator'),
    (8, 'Loadmaster'),
    (9, 'Ground Instructor'),
    (10, 'Dispatcher'),
    (11, 'Maintenance Technician'),
    (12, 'Cabin Crew'),
    (13, 'Cabin Manager'),
    (14, 'Safety Officer'),
    (15, 'Air Marshal'),
    (16, 'Security Officer'),
    (17, 'Operations Manager'),
    (18, 'Ramp Agent'),
    (19, 'Ticket Agent'),
    (20, 'Customer Service Agent');

INSERT INTO
    cities (id, name, idcountry)
VALUES ('NYC', 'New York', 'US'),
    ('LAX', 'Los Angeles', 'US'),
    ('CHI', 'Chicago', 'US'),
    ('HOU', 'Houston', 'US'),
    ('PHX', 'Phoenix', 'US'),
    ('PHL', 'Philadelphia', 'US'),
    ('SAT', 'San Antonio', 'US'),
    ('SD', 'San Diego', 'US'),
    ('DAL', 'Dallas', 'US'),
    ('SJ', 'San Jose', 'US'),
    ('TOR', 'Toronto', 'CA'),
    ('VAN', 'Vancouver', 'CA'),
    ('MTL', 'Montreal', 'CA'),
    ('CGY', 'Calgary', 'CA'),
    ('OTT', 'Ottawa', 'CA'),
    ('LON', 'London', 'GB'),
    ('PAR', 'Paris', 'FR'),
    ('BER', 'Berlin', 'DE'),
    ('TOK', 'Tokyo', 'JP'),
    ('SYD', 'Sydney', 'AU');

INSERT INTO
    airports (id, name, idcity)
VALUES (
        'JFK',
        'John F. Kennedy International Airport',
        'NYC'
    ),
    (
        'LGA',
        'LaGuardia Airport',
        'NYC'
    ),
    (
        'EWR',
        'Newark Liberty International Airport',
        'NYC'
    ),
    (
        'LAX',
        'Los Angeles International Airport',
        'LAX'
    ),
    (
        'ORD',
        'OHare International Airport',
        'CHI'
    ),
    (
        'IAH',
        'George Bush Intercontinental Airport',
        'HOU'
    ),
    (
        'PHX',
        'Phoenix Sky Harbor International Airport',
        'PHX'
    ),
    (
        'PHL',
        'Philadelphia International Airport',
        'PHL'
    ),
    (
        'SAT',
        'San Antonio International Airport',
        'SAT'
    ),
    (
        'SAN',
        'San Diego International Airport',
        'SD'
    ),
    (
        'DFW',
        'Dallas/Fort Worth International Airport',
        'DAL'
    ),
    (
        'SJC',
        'San Jose International Airport',
        'SJ'
    ),
    (
        'YYZ',
        'Toronto Pearson International Airport',
        'TOR'
    ),
    (
        'YVR',
        'Vancouver International Airport',
        'VAN'
    ),
    (
        'YUL',
        'Montréal-Pierre Elliott Trudeau International Airport',
        'MTL'
    ),
    (
        'YYC',
        'Calgary International Airport',
        'CGY'
    ),
    (
        'YOW',
        'Ottawa Macdonald-Cartier International Airport',
        'OTT'
    ),
    (
        'LHR',
        'London Heathrow Airport',
        'LON'
    ),
    (
        'CDG',
        'Charles de Gaulle Airport',
        'PAR'
    ),
    (
        'BER',
        'Berlin Brandenburg Airport',
        'BER'
    );

INSERT INTO
    customers (id, name, age, iddocument)
VALUES ('CUST001', 'John Doe', 35, 1),
    (
        'CUST002',
        'Jane Smith',
        28,
        2
    ),
    (
        'CUST003',
        'Alice Johnson',
        45,
        3
    ),
    (
        'CUST004',
        'Robert Brown',
        52,
        1
    ),
    (
        'CUST005',
        'Michael Davis',
        33,
        2
    ),
    (
        'CUST006',
        'Mary Wilson',
        41,
        3
    ),
    (
        'CUST007',
        'William Moore',
        29,
        1
    ),
    (
        'CUST008',
        'Patricia Taylor',
        50,
        2
    ),
    (
        'CUST009',
        'Linda Anderson',
        36,
        3
    ),
    (
        'CUST010',
        'David Thomas',
        47,
        1
    ),
    (
        'CUST011',
        'Barbara Jackson',
        39,
        2
    ),
    (
        'CUST012',
        'James White',
        42,
        3
    ),
    (
        'CUST013',
        'Susan Harris',
        34,
        1
    ),
    (
        'CUST014',
        'Joseph Martin',
        30,
        2
    ),
    (
        'CUST015',
        'Karen Thompson',
        48,
        3
    ),
    (
        'CUST016',
        'Charles Garcia',
        37,
        1
    ),
    (
        'CUST017',
        'Nancy Martinez',
        32,
        2
    ),
    (
        'CUST018',
        'Matthew Robinson',
        49,
        3
    ),
    (
        'CUST019',
        'Betty Clark',
        46,
        1
    ),
    (
        'CUST020',
        'Richard Rodriguez',
        40,
        2
    );

INSERT INTO
    gates (id, gatenumber, idairport)
VALUES (1, 'A1', 'JFK'),
    (2, 'A2', 'JFK'),
    (3, 'B1', 'LGA'),
    (4, 'B2', 'LGA'),
    (5, 'C1', 'EWR'),
    (6, 'C2', 'EWR'),
    (7, 'D1', 'LAX'),
    (8, 'D2', 'LAX'),
    (9, 'E1', 'ORD'),
    (10, 'E2', 'ORD'),
    (11, 'F1', 'IAH'),
    (12, 'F2', 'IAH'),
    (13, 'G1', 'PHX'),
    (14, 'G2', 'PHX'),
    (15, 'H1', 'PHL'),
    (16, 'H2', 'PHL'),
    (17, 'I1', 'SAT'),
    (18, 'I2', 'SAT'),
    (19, 'J1', 'SAN'),
    (20, 'J2', 'SAN');

INSERT INTO
    models (id, name, manufacturerid)
VALUES (1, '737', 1),
    (2, '747', 1),
    (3, '777', 1),
    (4, 'A320', 2),
    (5, 'A330', 2),
    (6, 'A350', 2),
    (7, 'E190', 3),
    (8, 'CRJ900', 4),
    (9, 'F-16', 5),
    (10, 'B-2', 6),
    (11, 'G500', 7),
    (12, 'Citation X', 8),
    (13, 'King Air', 9),
    (14, 'Falcon 7X', 10),
    (15, 'MRJ90', 11),
    (16, 'ATR 72', 12),
    (17, 'C919', 13),
    (18, 'An-225', 14),
    (19, 'MC-21', 15),
    (20, 'PC-12', 16);

INSERT INTO
    tripbooking (id, date, idtrips)
VALUES (1, '2023-01-05', 1),
    (2, '2023-02-18', 2),
    (3, '2023-03-23', 3),
    (4, '2023-04-15', 4),
    (5, '2023-05-28', 5),
    (6, '2023-07-01', 6),
    (7, '2023-08-07', 7),
    (8, '2023-09-09', 8),
    (9, '2023-10-14', 9),
    (10, '2023-11-25', 10),
    (11, '2023-12-30', 11),
    (12, '2024-01-03', 12),
    (13, '2024-02-17', 13),
    (14, '2024-03-22', 14),
    (15, '2024-04-12', 15),
    (16, '2024-05-27', 16),
    (17, '2024-06-29', 17),
    (18, '2024-07-06', 18),
    (19, '2024-08-13', 19),
    (20, '2024-09-18', 20);

INSERT INTO
    employees (
        id,
        name,
        idrol,
        ingressdate,
        idairline,
        idairport
    )
VALUES (
        'EMP001',
        'John Smith',
        1,
        '2015-03-10',
        1,
        'JFK'
    ),
    (
        'EMP002',
        'Jane Doe',
        2,
        '2016-05-15',
        2,
        'LGA'
    ),
    (
        'EMP003',
        'Jim Beam',
        3,
        '2017-07-20',
        3,
        'EWR'
    ),
    (
        'EMP004',
        'Jack Daniels',
        4,
        '2018-09-25',
        4,
        'LAX'
    ),
    (
        'EMP005',
        'Johnny Walker',
        5,
        '2019-11-30',
        5,
        'ORD'
    ),
    (
        'EMP006',
        'Jessica Jones',
        6,
        '2020-02-05',
        6,
        'IAH'
    ),
    (
        'EMP007',
        'Jerry Garcia',
        7,
        '2021-04-10',
        7,
        'PHX'
    ),
    (
        'EMP008',
        'Jill Scott',
        8,
        '2022-06-15',
        8,
        'PHL'
    ),
    (
        'EMP009',
        'Janet Jackson',
        9,
        '2015-08-20',
        9,
        'SAT'
    ),
    (
        'EMP010',
        'James Brown',
        10,
        '2016-10-25',
        10,
        'SAN'
    ),
    (
        'EMP011',
        'Jasmine Lee',
        11,
        '2017-12-30',
        11,
        'DFW'
    ),
    (
        'EMP012',
        'Jacob Black',
        12,
        '2018-03-05',
        12,
        'SJC'
    ),
    (
        'EMP013',
        'Julie White',
        13,
        '2019-05-10',
        13,
        'YYZ'
    ),
    (
        'EMP014',
        'Jason Green',
        14,
        '2020-07-15',
        14,
        'YVR'
    ),
    (
        'EMP015',
        'Joan Rivers',
        15,
        '2021-09-20',
        15,
        'YUL'
    ),
    (
        'EMP016',
        'Jeff Bezos',
        16,
        '2022-11-25',
        16,
        'YYC'
    ),
    (
        'EMP017',
        'Jeniffer Lopez',
        17,
        '2015-01-30',
        17,
        'YOW'
    ),
    (
        'EMP018',
        'Justin Timberlake',
        18,
        '2016-03-05',
        18,
        'LHR'
    ),
    (
        'EMP019',
        'Julia Roberts',
        19,
        '2017-05-10',
        19,
        'CDG'
    ),
    (
        'EMP020',
        'Javier Bardem',
        20,
        '2018-07-15',
        20,
        'BER'
    );

INSERT INTO
    revision_details (id, description, id_employee)
VALUES (
        'REV001',
        'Engine inspection',
        'EMP001'
    ),
    (
        'REV002',
        'Hydraulics check',
        'EMP002'
    ),
    (
        'REV003',
        'Landing gear maintenance',
        'EMP003'
    ),
    (
        'REV004',
        'Cabin pressure test',
        'EMP004'
    ),
    (
        'REV005',
        'Avionics system upgrade',
        'EMP005'
    ),
    (
        'REV006',
        'Fuel system inspection',
        'EMP006'
    ),
    (
        'REV007',
        'Electrical wiring check',
        'EMP007'
    ),
    (
        'REV008',
        'Flight control system calibration',
        'EMP008'
    ),
    (
        'REV009',
        'Oxygen system test',
        'EMP009'
    ),
    (
        'REV010',
        'Emergency equipment check',
        'EMP010'
    ),
    (
        'REV011',
        'Navigation system update',
        'EMP011'
    ),
    (
        'REV012',
        'Structural integrity test',
        'EMP012'
    ),
    (
        'REV013',
        'Communication system upgrade',
        'EMP013'
    ),
    (
        'REV014',
        'Fire suppression system check',
        'EMP014'
    ),
    (
        'REV015',
        'Cargo hold inspection',
        'EMP015'
    ),
    (
        'REV016',
        'Environmental control system test',
        'EMP016'
    ),
    (
        'REV017',
        'Anti-ice system maintenance',
        'EMP017'
    ),
    (
        'REV018',
        'De-icing system check',
        'EMP018'
    ),
    (
        'REV019',
        'Autopilot system test',
        'EMP019'
    ),
    (
        'REV020',
        'Radar system calibration',
        'EMP020'
    );

INSERT INTO
    planes (
        id,
        plates,
        capacity,
        fabrication_date,
        id_status,
        id_model
    )
VALUES (
        1,
        'N12345',
        180,
        '2010-05-15',
        1,
        1
    ),
    (
        2,
        'N67890',
        200,
        '2011-06-20',
        2,
        2
    ),
    (
        3,
        'N54321',
        220,
        '2012-07-25',
        3,
        3
    ),
    (
        4,
        'N98765',
        250,
        '2013-08-30',
        4,
        4
    ),
    (
        5,
        'N11223',
        180,
        '2014-09-10',
        5,
        5
    ),
    (
        6,
        'N44556',
        200,
        '2015-10-05',
        6,
        6
    ),
    (
        7,
        'N77889',
        220,
        '2016-11-15',
        7,
        7
    ),
    (
        8,
        'N99001',
        250,
        '2017-12-20',
        8,
        8
    ),
    (
        9,
        'N22334',
        180,
        '2018-01-25',
        9,
        9
    ),
    (
        10,
        'N55667',
        200,
        '2019-02-05',
        10,
        10
    ),
    (
        11,
        'N88990',
        220,
        '2020-03-15',
        11,
        11
    ),
    (
        12,
        'N11234',
        250,
        '2021-04-20',
        12,
        12
    ),
    (
        13,
        'N44567',
        180,
        '2022-05-25',
        13,
        13
    ),
    (
        14,
        'N77890',
        200,
        '2023-06-05',
        14,
        14
    ),
    (
        15,
        'N99012',
        220,
        '2024-07-15',
        15,
        15
    ),
    (
        16,
        'N22345',
        250,
        '2025-08-20',
        16,
        16
    ),
    (
        17,
        'N55678',
        180,
        '2026-09-25',
        17,
        17
    ),
    (
        18,
        'N88901',
        200,
        '2027-10-05',
        18,
        18
    ),
    (
        19,
        'N11245',
        220,
        '2028-11-15',
        19,
        19
    ),
    (
        20,
        'N44589',
        250,
        '2029-12-20',
        20,
        20
    );

INSERT INTO
    revisions (id, revision_date, id_plane)
VALUES (1, '2023-01-05', 1),
    (2, '2023-02-18', 2),
    (3, '2023-03-23', 3),
    (4, '2023-04-15', 4),
    (5, '2023-05-28', 5),
    (6, '2023-07-01', 6),
    (7, '2023-08-07', 7),
    (8, '2023-09-09', 8),
    (9, '2023-10-14', 9),
    (10, '2023-11-25', 10),
    (11, '2023-12-30', 11),
    (12, '2024-01-03', 12),
    (13, '2024-02-17', 13),
    (14, '2024-03-22', 14),
    (15, '2024-04-12', 15),
    (16, '2024-05-27', 16),
    (17, '2024-06-29', 17),
    (18, '2024-07-06', 18),
    (19, '2024-08-13', 19),
    (20, '2024-09-18', 20);

INSERT INTO
    flight_connections (
        id,
        connection_number,
        id_trip,
        id_plane,
        id_airport
    )
VALUES (1, 'FC001', 1, 1, 'JFK'),
    (2, 'FC002', 2, 2, 'LGA'),
    (3, 'FC003', 3, 3, 'EWR'),
    (4, 'FC004', 4, 4, 'LAX'),
    (5, 'FC005', 5, 5, 'ORD'),
    (6, 'FC006', 6, 6, 'IAH'),
    (7, 'FC007', 7, 7, 'PHX'),
    (8, 'FC008', 8, 8, 'PHL'),
    (9, 'FC009', 9, 9, 'SAT'),
    (10, 'FC010', 10, 10, 'SAN'),
    (11, 'FC011', 11, 11, 'DFW'),
    (12, 'FC012', 12, 12, 'SJC'),
    (13, 'FC013', 13, 13, 'YYZ'),
    (14, 'FC014', 14, 14, 'YVR'),
    (15, 'FC015', 15, 15, 'YUL'),
    (16, 'FC016', 16, 16, 'YYC'),
    (17, 'FC017', 17, 17, 'YOW'),
    (18, 'FC018', 18, 18, 'LHR'),
    (19, 'FC019', 19, 19, 'CDG'),
    (20, 'FC020', 20, 20, 'BER');

INSERT INTO
    revemployee (idemployee, idrevision)
VALUES ('EMP001', 1),
    ('EMP002', 2),
    ('EMP003', 2),
    ('EMP004', 3),
    ('EMP005', 4),
    ('EMP006', 5),
    ('EMP007', 6),
    ('EMP008', 7),
    ('EMP009', 8),
    ('EMP010', 9),
    ('EMP011', 10),
    ('EMP012', 11),
    ('EMP013', 12),
    ('EMP014', 13),
    ('EMP015', 14),
    ('EMP016', 15),
    ('EMP017', 16),
    ('EMP018', 17),
    ('EMP019', 18),
    ('EMP020', 19);

INSERT INTO
    tripbookingdetails (
        id,
        idtripbooking,
        idcustomers,
        idfares
    )
VALUES (1, 1, 'CUST001', 1),
    (2, 2, 'CUST002', 2),
    (3, 3, 'CUST003', 3),
    (4, 4, 'CUST004', 4),
    (5, 5, 'CUST005', 5),
    (6, 6, 'CUST006', 6),
    (7, 7, 'CUST007', 7),
    (8, 8, 'CUST008', 8),
    (9, 9, 'CUST009', 9),
    (10, 10, 'CUST010', 10),
    (11, 11, 'CUST011', 11),
    (12, 12, 'CUST012', 12),
    (13, 13, 'CUST013', 13),
    (14, 14, 'CUST014', 14),
    (15, 15, 'CUST015', 15),
    (16, 16, 'CUST016', 16),
    (17, 17, 'CUST017', 17),
    (18, 18, 'CUST018', 18),
    (19, 19, 'CUST019', 19),
    (20, 20, 'CUST020', 20);

INSERT INTO
    tripcrews (idemployees, idconection)
VALUES ('EMP001', 1),
    ('EMP002', 2),
    ('EMP003', 3),
    ('EMP004', 4),
    ('EMP005', 5),
    ('EMP006', 6),
    ('EMP007', 7),
    ('EMP008', 8),
    ('EMP009', 9),
    ('EMP010', 10),
    ('EMP011', 11),
    ('EMP012', 12),
    ('EMP013', 13),
    ('EMP014', 14),
    ('EMP015', 15),
    ('EMP016', 16),
    ('EMP017', 17),
    ('EMP018', 18),
    ('EMP019', 19),
    ('EMP020', 20);