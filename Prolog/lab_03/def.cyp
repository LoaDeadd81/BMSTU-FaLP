CREATE (a:Person {name: 'A', gender: 'Male'}),
       (b:Person {name: 'B', gender: 'Male'}),
       (c:Person {name: 'C', gender: 'Female'}),
       (d:Person {name: 'D', gender: 'Male'}),
       (e:Person {name: 'E', gender: 'Female'}),
       (f:Person {name: 'F', gender: 'Male'}),
       (g:Person {name: 'G', gender: 'Female'}),
       (c1:Person {name: 'C1', gender: 'Male'}),
       (b1:Person {name: 'B1', gender: 'Female'}),
       (a1:Person {name: 'A1', gender: 'Male'}),
       (a2:Person {name: 'A2', gender: 'Female'}),
       (b)-[:PARENT]->(a),
       (c)-[:PARENT]->(a),
       (d)-[:PARENT]->(b),
       (e)-[:PARENT]->(b),
       (f)-[:PARENT]->(c),
       (g)-[:PARENT]->(c),
       (f)-[:PARENT]->(c1),
       (g)-[:PARENT]->(c1),
       (d)-[:PARENT]->(b1),
       (e)-[:PARENT]->(b1),
       (c1)-[:PARENT]->(a1),
       (b1)-[:PARENT]->(a2);

MATCH (p:Person)-[:PARENT]->()<-[:PARENT]-(wife:Person)<-[:PARENT]-(tesha:Person)
  WHERE p.name = 'B' AND p.gender = 'Male' AND wife.gender = 'Female' AND tesha.gender = 'Female'
RETURN tesha.name;

MATCH (p:Person)-[:PARENT]->()<-[:PARENT]-(husband:Person)<-[:PARENT]-(svekr:Person)
  WHERE p.name = 'C' AND p.gender = 'Female' AND husband.gender = 'Male' AND svekr.gender = 'Male'
RETURN svekr.name;

MATCH (father:Person)-[:PARENT]->(p:Person)<-[:PARENT]-(mother:Person),
      (father:Person)-[:PARENT]->(sibling:Person)<-[:PARENT]-(mother:Person)
  WHERE p.name = 'B1' AND mother.gender = 'Female' AND father.gender = 'Male'
RETURN sibling.name;

MATCH (father:Person)-[:PARENT]->(p:Person)<-[:PARENT]-(mother:Person),
      (father:Person)-[:PARENT]->(brother:Person)<-[:PARENT]-(mother:Person)
  WHERE p.name = 'C' AND mother.gender = 'Female' AND father.gender = 'Male' AND brother.gender = 'Male'
RETURN brother.name;

