
# Contants list for QOBUZ project

## MTI ranges

| MTI range | Project | Process        | Service | Module                                    | Desc |
|:----------|:--------|:---------------|:--------|:------------------------------------------|:-----|
| 10XX      | bry     | ESBAC          |         | bry\_acesb                                | -    |
| 10XX      | qbz     | IB             |         | xb\_ibrand                                | -    |
| 11XX      | bry     | FRONT          |         | bry\_ctldmdfront                          | -    |
| 12XX      | bry     | DLC            |         | bry\_ctldmddlc                            | -    |
| 13XX      | bry     | LDEC           |         | bry\_ctldmdldec                           | -    |
| 14XX      | bry     | TECH           |         | bry\_ctldmdtech                           | -    |
| 15XX      | bry     | MAGE           |         | bry\_ctldmdmage                           | -    |
| 16XX      | bry     | OGO            |         | bry\_ctldmdogo                            | -    |
| 17XX      | -       | ONIX/FABER     |         | bry\_sax2bus                              | -    |
| 18XX      | -       | ONIX/FABER     |         |                                           | -    |
| 19XX      | -       | ONIX/FABER     |         |                                           | -    |
| 20XX      | bry     | ONIX/FABER     |         | bry\_faber                                | -    |
| 21XX      | bry     | VALID          |         | bry\_validate                             | -    |
| 22XX      | -       | VALID          |         | bry\_download                             | -    |
| 23XX      | -       | VALID          |         | bry\_activate                             | -    |
| 24XX      | -       | VALID          |         |                                           | -    |
| 25XX      | -       | VODF           |         | bry\_ctldmdvodf                           | -    |
| 26XX      | bry/qbz | JDV            |         | bry\_jdv                                  | -    |
| 27XX      | -       | FABERDMD       |         | bry\_ctldmdfab                            | -    |
| 28XX      | -       | MAILS          |         |                                           | -    |
| 29XX      | -       | ORDER          |         | xb\_order                                 | -    |
| 30XX      | -       | XB             |         | xb\_auth                                  | -    |
| 31XX      | bry     | PAYPAL         |         | bry\_ctldmdpaypal                         | -    |
| 31XX      | qbz     | PAYPAL         |         | qbz\_ctldmdpaypal                         | -    |
| 32XX      | bry     | LICENCE        |         | bry\_licence                              | -    |
| 33XX      | -       | DDEX(INIT)     |         | bry\_ddex/bry\_ioda                       | -    |
| 33XX      | -       | DDEX(INIT)     |         | bry\_ddexcrawl/bry\_ddexsax/bry\_ddexinit | -    |
| 34XX      | -       | DDEXVAL(INIT)  |         | xs\_ddexValid                             | -    |
| 35XX      | qbz     | DDEXVAL(INIT)  |         | qbz\_activate                             | -    |
| 36XX      | bry     | DONWLOAD       |         | bry\_download                             | -    |
| 36XX      | qbz     | BULK           |         | xc\_sfbulk                                | -    |
| 3701      | -       | RABBITMQ       |         |                                           | -    |
| 37XX      | bry     | FID            |         | xb\_rclient                               | -    |
| 38XX      | -       |                |         |                                           | -    |
| 39XX      | -       | PBOX           |         | bry\_ctldmdpbox                           | -    |
| 40XX      | qbz     | ADYEN          |         | bry\_ctldmdadyen                          | -    |
| 41XX      | qbz     | HCC            |         | qbz\_ctldmdhcc                            | -    |
| 42XX      | qbz     | USERLIB        |         | qbz\_userLibrary                          | -    |
| 43XX      | qbz     | DBMGR          |         | qbz\_dbmgrcli                             | -    |
| 44XX      | qbz     | GENPRICE       |         | qbz\_genprice                             | -    |
| 45XX      | qbz     | XB             |         | qobuz order interface                     | -    |
| 46XX      | qbz     | NOTIF          |         | xb\_notif                                 | -    |
| 47XX      | qbz     | TOPS X         |         |                                           | -    |
| 48XX      | qbz     | follow app     |         |                                           | -    |
| 49XX      | qbz     | alexa news     |         | xan\_alexa                                | -    |
| 50XX      | -       | sax2bus bin    |         |                                           | -    |
| 51XX      | qbz     | taxcloud       |         | xan\_ctldmdtaxcloud                       | -    |
| 52XX      | qbz     | stream report  |         | xan\_reportStreaming                      | -    |
| 53XX      | qbz     | last.fm        |         |                                           | -    |
| 54XX      | qbz     | facebook       |         |                                           | -    |
| 55XX      | qbz     | authent        |         |                                           | -    |
| 56XX      | psp-hub | cybs           |         |                                           | -    |
| 57XX      | qbz     | linkfire       |         | xan\_linkfire                             | -    |
| 58XX      | qbz     | collectBI      |         | xan\_collecteBI                           | -    |
| 59XX      | qbz     | s3Pusher       |         | xan\_s3Pusher                             | -    |
| 60XX      | xan     | reco           |         | xan\_suggest                              | -    |
| 61XX      | xan     | algolia        |         | xan\_sasalgolia                           | -    |
| 62XX      | xan     | elactic search |         | xan\_elasticSearch                        | -    |

## port range list

| ENV       | dev b25    | intég  | int range | tar gen | prod range | ghost claranet        | commentaire  |
|:----------|:-----------|:--------|:----------|:--------|:-----------|:----------------------|:-------------|
| XAN\_BACK | ~/env/     | int03   | 230XX     | int03   |            | xandrie-tango/ manuel |              |
| XAN\_LOG  | ~/env/log  | intlog  | 270XX     | logapp  | 230XX      | xandrie-tango/log-app |              |
| XAN\_UL   | ~/env/ul   | intul   | 250XX     | ulapp   | 220XX      | tango-ul-xb/ul-app    |              |
| XAN\_XB   | ~/env/xb   | int01   | 290XX     | int01   | 210XX      | tango-ul-xb/xb-app    | XB frontend  |
|           |            |         |           |         | 210XX      | xandrie-tango/ manuel | XB backend   |
| XAN\_JDV  | ~/env/jdv  | int02   | 190XX     |         |            | xandrie-tango/ manuel |              |
| XAN\_API  | ~/env/api  | intapi  | 300XX     | apiapp  | 240XX      | tango-api/api-app     |              |
| XAN\_SR   | ~/env/sr   | intsr   | 320XX     | srapp   | 240XX      | tango-ul-xb/sr-app    |              |
| XAN\_RECO | ~/env/reco | intreco | 310XX     | recoapp | 250XX ?    |                       |              |
| XAN\_BAT  | ~/env/     | int04   | 220XX     |         |            | xandrie-tango/ manuel | FA           |
|           | ~/env/     |         |           |         |            |                       | Batch (TODO) |

dead :
int05
int06
alapp
