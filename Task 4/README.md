# Task 4

Per nå bruker teamet terraform state i Git for koden. Selv om det kan være greit i starten kan det føre til flere problemer over tid.

### Utfordringer med slik denne tilnærmingen

1. **Trøbbel ved å arbeide samtidig**
- Når flere på teamet jobber samtidig, ender vi ofte opp med konflikter i state-filen
- Ingen automatisk låsemekanisme for å hindre at folk roter med samme ressurser
- Høy risiko for å ødelegge state-filen når folk prøver å gjøre endringer
- Konflikter med merging kan bli vanskelig å løse

2. **Sikkerhetshull**
   - State-filer inneholder ofte sensitive greier som API-nøkler og IDer
   - Alle som har tilgang til repositoryet kan potensielt se disse verdiene
   - Historiske sensitive data blir liggende igjen i Git-historikken
   - Fare for at hemmeligheter lekker hvis repositoryet blir offentlig

3. **Skaleringsproblemer**
   - Jo flere folk på teamet, jo verre blir konflktene
   - Manuell løsing av state-konflikter tar alt for mye tid
   - Økt risiko for menneskelig feil
   - Vanskelig å spore hvem som har gjort hva

## Bedre Løsninger for State Management

1. **Ekstern State Lagring **
   - Bruke skylagring som AWS S3, Azure Storage eller GCS
   - Fordeler:
     - Innebygd låsing av state
     - Bedre tilgangskontroll
     - Sikrere

2. **State Låsing med DynamoDB**
   - Holder state-filen intakt
   - Gir tydelige feilmeldinger ved låst state

4. **Ekstra Sikkerhetstiltak**
   - Logging av state-endringer
   - Jevnlige state-sikkerhetskopier
   - Bruke IAM-roller for tilgangsstyring


## IImplementasjonsanbefaling

   - Bruk workspaces for miljøseparasjon
   - Implementer kryptering av state-filer
   - Jevnlige sikkerhetskopier
   - Gode navnekonvensjoner
   - Implementer "least-privilege acess"
   - Implement state file encryption
   - Regular state backups
   - Enkel navngiving
