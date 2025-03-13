class Example {
  // declar variabielele membre ale clasei
  int varA;
  int varB;
  String varC;
  List<int> varD;
  double varE;

  // constructorul principal care initializeaza toate variabilele
  Example(this.varA, this.varB, this.varC, this.varD, this.varE);

  // Constructor denumit (named constructor) pentru crearea unui obiect din XML
  Example.fromXml(String xml)
    : varA = 0,
      varB = 0,
      varC = '',
      varD = [],
      varE = 0.0 {
    // logica pt parsarea XML - extrage valorile dintre taguri
    if (xml.contains('varA')) {
      varA = int.parse(xml.split('varA>')[1].split('</')[0]);
    }
    if (xml.contains('varB')) {
      varB = int.parse(xml.split('varB>')[1].split('</')[0]);
    }
    if (xml.contains('varC')) {
      varC = xml.split('varC>')[1].split('</')[0];
    }
    if (xml.contains('varD')) {
      String listStr = xml.split('varD>')[1].split('</')[0];
      varD = listStr.split(',').map((s) => int.parse(s.trim())).toList();
    }
    if (xml.contains('varE')) {
      varE = double.parse(xml.split('varE>')[1].split('</')[0]);
    }
  }

  // Metoda pentru convertirea obiectului in format XML
  String toXml() {
    return '''
    <Example>
      <varA>${varA}</varA>
      <varB>${varB}</varB>
      <varC>${varC}</varC>
      <varD>${varD.join(',')}</varD>
      <varE>${varE}</varE>
    </Example>
    ''';
  }
}

void main() {
  // Testare constructor normal
  var ex1 = Example(10, 20, "test", [1, 2, 3], 5.5);
  print("Obiect creat cu constructorul normal:");
  print(ex1.toXml());

  // Testare constructor fromXml
  var xmlString = '''
    <Example>
      <varA>42</varA>
      <varB>100</varB>
      <varC>Test XML</varC>
      <varD>5,10,15</varD>
      <varE>3.14</varE>
    </Example>
  ''';

  var ex2 = Example.fromXml(xmlString);
  print("\nObiect creat cu constructorul fromXml:");
  print("varA: ${ex2.varA}");
  print("varB: ${ex2.varB}");
  print("varC: ${ex2.varC}");
  print("varD: ${ex2.varD}");
  print("varE: ${ex2.varE}");

  // Conversie inapoi în XML
  print("\nConversie înapoi în XML:");
  print(ex2.toXml());
}
