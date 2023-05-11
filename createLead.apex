// turn these into a list of Lead objects
List<String> firstNames = new List<String> {'John', 'Jane', 'Jim', 'Jack', 'Jill', 'Jessie', 'Jenn'};
List<String> lastNames = new List<String> {'Smith', 'Jones', 'Johnson', 'Jackson', 'Jenkins', 'Jennings', 'Jenson'};
List<String> companyNames = new List<String> {'Acme', 'Ajax', 'Alpha', 'Beta', 'Gamma', 'Delta', 'Epsilon'};
List<String> emails = new List<String> {'@gmail.com', '@yahoo.com', '@hotmail.com', '@aol.com', '@msn.com', '@comcast.net', '@verizon.net'};
List<String> phoneNumbers = new List<String> {'555-555-5555', '555-555-5556', '555-555-5557', '555-555-5558', '555-555-5559', '555-555-5560', '555-555-5561'};
List<String> addresses = new List<String> {'123 Main St', '456 Elm St', '789 Oak St', '1011 Pine St', '1213 Maple St', '1415 Spruce St', '1617 Cedar St'};
List<String> cities = new List<String> {'New York', 'Los Angeles', 'Chicago', 'Houston', 'Philadelphia', 'Phoenix', 'San Antonio'};
List<String> states = new List<String> {'NY', 'CA', 'IL', 'TX', 'PA', 'AZ', 'TX'};
List<String> zipCodes = new List<String> {'10001', '90001', '60601', '77001', '19101', '85001', '78201'};
List<Lead> leads = new List<Lead>();
// remove the math.Mod() and replace it with i
for (Integer i = 0; i < 10; i++) {
    Lead l = new Lead();
    l.FirstName = firstNames[Math.mod(i, firstNames.size())];
    l.LastName = lastNames[Math.mod(i, lastNames.size())];
    l.Company = companyNames[Math.mod(i, companyNames.size())];
    l.Email = l.FirstName + l.LastName + emails[Math.mod(i, emails.size())];
    l.Phone = phoneNumbers[Math.mod(i, phoneNumbers.size())];
    l.Street = addresses[Math.mod(i, addresses.size())];
    l.City = cities[Math.mod(i, cities.size())];
    l.State = states[Math.mod(i, states.size())];
    l.PostalCode = zipCodes[Math.mod(i, zipCodes.size())];
    leads.add(l);
}

insert leads;

