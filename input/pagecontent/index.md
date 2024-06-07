<div xmlns="http://www.w3.org/1999/xhtml"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <blockquote class="stu-note">
    <p></p>
    <p></p>
    <p><strong>Aufruf zum <a href="contest.html">IPS Visualization Contest</a> - Gestalte die Zukunft der Patient Summary!</strong></p>
    <p></p>
    <p></p>
  </blockquote>
</div>

### Einleitung

Ziel dieses Implementierungsleitfadens ist die Beschreibung von Struktur, Format und Standards des österreischischen Patient Summary (Austrian PS). Dazu werden die Vorgaben des [International Patient Summary (IPS)](https://hl7.org/fhir/uv/ips/) sowie des [HL7® Austria FHIR® Core Implementation Guides](https://build.fhir.org/ig/HL7Austria/HL7-AT-FHIR-Core-R4/) kombiniert.

[![overview](austrian-ips-context.drawio.png){: style="width: 50%"}](austrian-ips-context.drawio.png)

#### Beispiele

Die folgenden beiden Beispiele setzen die Vorgaben des österreichischen Patient Summary um:

- [IPS-1-no-problems-medication-allergies](Bundle-IPS-1-no-problems-medication-allergies.html)
- [IPS-2-preventive-medical-checkup](Bundle-IPS-2-preventive-medical-checkup.html)

### Abhängigkeiten zu anderen Implementierungsleitfäden

{% include dependency-table.xhtml %}

### Lizenz und rechtliche Bedingungen
HL7®, HEALTH LEVEL SEVEN® und FHIR® sind Marken im Besitz von Health Level Seven International, eingetragen beim United States Patent and Trademark Office.

Dieser Implementierungsleitfaden enthält und verweist auf geistiges Eigentum, das Dritten gehört („Third Party IP“). Mit der Annahme dieser Lizenzbedingungen werden keine Rechte in Bezug auf das geistige Eigentum Dritter gewährt. Der Lizenznehmer ist allein dafür verantwortlich, alle erforderlichen Lizenzen oder Genehmigungen für die Nutzung des geistigen Eigentums Dritter in Verbindung mit der Spezifikation oder auf andere Weise zu ermitteln und einzuholen.