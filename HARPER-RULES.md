# Harper-Regeln (harper-ls 3.2.0)

## Cheatsheet: Inline-Codes & Wörterbuch (im Fließtext)

| Was du willst | Wie |
|---|---|
| **Wort ins projektweite Wörterbuch** (gilt für alle Dateien des Projekts, wird mit Git versioniert) | `.harper-dictionary.txt` im Projekt-Root anlegen, **eine Zeile pro Wort** — oder im Editor: Quick Fix auf der Markierung → „Add to dictionary" (braucht `"harper.workspaceDictPath": ".harper-dictionary.txt"` + `"harper.codeActions.forceStable": true` in `.vscode/settings.json`, dann Language Server neu starten) |
| **Wort ins globale Wörterbuch** (alle Projekte) | User-Dictionary `C:\Users\tsili\AppData\Roaming\harper-ls\dictionary.txt`, zeilenweise |
| **Einzelne Meldung dauerhaft ignorieren** | Quick Fix → „Ignore" — landet in `.harper-ignored-lints.json` im Projekt-Root (versionierbar) |
| **Eine Regel nur für eine Stelle ausblenden** | Quick Fix auf der Meldung → Regelname deaktivieren |
| **Regel projektweit an/aus** | `.vscode/settings.json`: `"harper.linters.<RegelName>": false` (z. B. `"harper.linters.LongSentences": false`) — siehe Liste unten |
| **CLI-Test einzelner Regeln** | `harper-cli lint --only AvoidContractions datei.md` |

*Hinweis:* Es gibt keine `<!-- harper:ignore -->`-Inline-Kommentare — Ignorieren läuft über Quick Fix / `.harper-ignored-lints.json` / Wörterbuch.

---

971 Regeln insgesamt. Default = Wert, mit dem harper-ls startet. In `harper-ls.toml` unter `[linters]` nur Abweichungen eintragen, z. B. `LongSentences = false`.

| Regel | default | Bedeutung |
|---|---|---|
| `ABitOfPlural` | True | Flags `a bit of` used with plural nouns. |
| `ACoupleMore` | True | Corrects `a couple of more` to `a couple more`. |
| `ALittleOfPractice` | True | Corrects `a little of practice` to `a little practice` or `a bit of practice`. |
| `ALongTime` | True | Corrects `along time` to `a long time`. |
| `AMeansToAnEnd` | True | Corrects `a mean to an end` to `a means to an end` |
| `AOkHyphen` | True | Replaces the loose article-plus-abbreviation pairing with the standard hyphenated form whenever a linking verb describes readiness or approval. |
| `APart` | True | Finds and corrects common mistakes between 'a part' and 'apart' |
| `ASomeTime` | True | Removes the redundant/conflicting indefinite article `a` before `some` when followed by time expressions. |
| `AWaysToGo` | True | Corrects the idiom `a ways to go` when the indefinite article is missing. |
| `AWhile` | True | Enforces `awhile` after verbs and `a while` everywhere else. |
| `AWholeOther` | True | Corrects `a whole another`/`a whole 'nother` to `a whole other`. |
| `AccuseOf` | True | Corrects `accuse for/as` to `accuse of`. |
| `AdNauseam` | True | A collection of linters that can be run as one. |
| `Addicting` | True | Replaces `addicting` with `addictive` when used as an adjective. |
| `AdjectiveDoubleDegree` | True | Finds adjectives that are used as double degrees (e.g. `more prettier`). |
| `AdjectiveOfA` | True | This rule looks for sequences of words of the form `adjective of a`. |
| `Ado` | True | Corrects `adieu` to `ado`. |
| `AdvantageOf` | True | Corrects the missing preposition in the idiom `take advantage of` when `of` is dropped. |
| `AfterAWhile` | True | Corrects the missing article in `after while`, forming `after a while`. |
| `AfterAll` | True | Corrects `afterall` to `after all`. |
| `AfterLater` | True | Checks for the word `later` following `after [a period of time]`. |
| `AheadAnd` | True | Corrects `an` to `and` after `ahead`. |
| `AirToErr` | True | Corrects `air` to `err` in common idioms. |
| `Ajar` | True | Corrects `a jar` to `ajar`. |
| `Akimbo` | True | Corrects `a kimbo` to `akimbo`. |
| `Albeit` | True | Corrects this expression to the standard `albeit`. |
| `AllHellBreakLoose` | True | Corrects forms of `all hell breaks out` to `all hell breaks loose`. |
| `AllIntentsAndPurposes` | True | Finds and corrects common wrong forms of the phrase 'for all intents and purposes' / 'to all intents and purposes'. |
| `AllOfASudden` | True | Guides this expression toward the standard `all of a sudden`. |
| `AllReady` | True | Flags `all ready` when it precedes an adjective so the adverb `already` can take its place. |
| `AllThatsAre` | True | Looks for agreement errors after `all that is` or `all that's`. |
| `AllThough` | True | Nobody means to write the two-word phrase `all though` when the single word `although` is intended. |
| `AllWellAndGood` | True | Corrects `all well in good` to `all well and good`. |
| `AllowTo` | True | Flags erroneous usage of `allow to` without a subject. |
| `Alongside` | True | Replaces the spaced form `along side` with `alongside`. |
| `AltarAlter` | True | A collection of linters that can be run as one. |
| `AlzheimersDisease` | True | Fixes the common misnomer `old-timers' disease`, ensuring the correct medical term `Alzheimer’s disease` is used. |
| `AmInTheMorning` | True | Finds redundant am/pm indicators used together with time periods such as 'in the morning' or 'at night'. |
| `AmazonNames` | True | When referring to the various products of Amazon.com, make sure to treat them as a proper noun. |
| `Americas` | True | When referring to North, Central, and South America, make sure to treat them as a proper noun. |
| `AmountsFor` | True | Corrects `amounts for` to either `amounts to` or `accounts for` |
| `AnA` | True | A rule that looks for incorrect indefinite articles. For example, `this is an mule` would be flagged as incorrect. |
| `AnAnother` | True | Corrects `an another` and `a another`. |
| `AnArmAndALeg` | True | Corrects wrong variants of the idiom `an arm and a leg`. |
| `AnalogAcousticBike` | False | Suggests more standard terms for `analog/analogue bike` and `acoustic bike`. |
| `AndIn` | True | Fixes the typo `an in` when it stands in for the conjunction `and in`, while avoiding common `in-...` noun phrases and a few attested exceptions. |
| `AndSuch` | True | Corrects `and the such` to `and such`. |
| `AndTheLike` | True | Corrects mistakes in `and the like` and `or the like`. |
| `AnotherAn` | True | Corrects `another an` to `another`. |
| `AnotherOnes` | True | Corrects `another ones`. |
| `AnotherThingComing` | True | Though `another think coming` is the original phrase, `another thing coming` is now more common. |
| `AnotherThings` | True | Corrects `another things`. |
| `AnotherThinkComing` | False | Though `another thing coming` is now more common, `another think coming` is the original phrase. |
| `Anybody` | True | Looks for incorrect spacing inside the closed compound `anybody`. |
| `Anyhow` | True | Looks for incorrect spacing inside the closed compound `anyhow`. |
| `Anywhere` | True | Looks for incorrect spacing inside the closed compound `anywhere`. |
| `ApartFrom` | True | Flags the misspelling `apart form` and suggests `apart from`. |
| `AppleNames` | True | When referring to Apple products and services, make sure to treat them as proper nouns. |
| `ArgumentToBeMade` | True | Corrects `argument to be said` to `argument to be made`. |
| `ArriveOnWeekday` | True | Keeps schedules explicit by preferring the familiar `arrive on Friday` pattern instead of a bare weekday. |
| `ArriveTo` | True | Corrects `arrive to` to `arrive at` or `arrive in`. |
| `AsComparedTo` | True | Corrects `as compare to` to `as compared to`. |
| `AsEvidentBy` | True | Corrects `evident by` to `evidenced by` in passive constructions where `evidence` is used as a verb. |
| `AsFarAsICanTell` | True | Expands an initialism. |
| `AsFarAsIKnow` | True | Expands an initialism. |
| `AsFarBackAs` | True | Corrects nonstandard `as early back as` to `as far back as`. |
| `AsFollows` | True | Corrects the phrase `as follow`, which is sometimes produced by overcorrection. While it appeared briefly in 19th-century English, it is now considered archaic; modern standard usage requires `as follows` regardless of number. |
| `AsHow` | True | Corrects `as how` to `as to how`. |
| `AsIUnderstandIt` | True | Expands an initialism. |
| `AsIfThough` | True | Corrects redundant `as if though`. |
| `AsIsWithAnything` | True | Flags the incorrect idiom blend `as is with anything` and suggests standard alternatives like `as with anything` or `as is the case with anything`. |
| `AsItHappens` | True | Corrects `as it so happens` to `as it happens`. |
| `AsLongAs` | True | Corrects misspelled or misused forms of the phrase `as long as`. |
| `AsMuchAs` | True | Corrects `as much than` to `as much as`. |
| `AsOfCurrently` | True | Corrects `as of currently` to `currently` or `as of now`. |
| `AsOfLately` | True | Corrects `as of lately` to `lately` or `as of late`. |
| `AsOpposedTo` | True | Corrects `as oppose to` to `as opposed to`. |
| `AsSoonAsPossible` | True | Looks for redundant use of the initialism `ASAP` and offers to expand when not redundant. |
| `AsToInterrogative` | True | Corrects `to` to `as to` between certain adjectives and `wh-words`. |
| `AskNoPreposition` | True | Identifies sequences like `ask to us` or `tell to him` and recommends removing the superfluous “to”. |
| `AspireTo` | True | Corrects `aspire for` to `aspire to`. |
| `AtAllCosts` | True | Corrects `at all cost` to `at all costs`. |
| `AtFaceValue` | True | Corrects nonstandard variants of `at face value`. |
| `AtLeasToLeast` | True | Fixes the frequent typo `at leas` when the intended expression is `at least`. |
| `AtLestToLeast` | True | Fixes the mistake `at lest` when the intended expression is `at least`. |
| `AtTheBestOfTimes` | True | Corrects `in the best of times` to `at the best of times`. |
| `AtTheEndOfTheDay` | True | Corrects `in the end of the day` to `at the end of the day`. |
| `AtTheExpenseOf` | True | The correct idiom is `at the expense of`, with singular `expense`. But retain `expanse` if this phrase refers to a wide area. |
| `AtTheVeryLeast` | True | Corrects `in the very least` to `at the very least`. |
| `Audible` | True | Corrects `hearable` to `audible`. |
| `Australia` | True | When referring to states, territories, and cities in Australia, make sure to treat them as a proper noun. |
| `AvoidAndAlso` | True | Reduces redundancy by replacing `and also` with `and`. |
| `AvoidContractions` | False | Suggests expanded forms for common contractions, such as `isn't` → `is not` and `we're` → `we are`. |
| `AvoidCurses` | True | Flags offensive language and offers various ways to censor or replace with euphemisms. |
| `AwaitFor` | True | Suggests using either `await` or `wait for` but not both, as they express the same meaning. |
| `AwareOf` | True | Corrects `aware about` to the standard `aware of`. |
| `AzureNames` | True | When referring to Azure cloud services, make sure to treat them as proper nouns. |
| `BackInTheDay` | True | This linter flags instances of the nonstandard phrase `back in the days`. The correct, more accepted form is `back in the day` |
| `BackhandedCompliment` | True | Corrects `backhand compliment` to `backhanded compliment`. |
| `BacklashBackslash` | True | A collection of linters that can be run as one. |
| `Backplane` | True | Looks for incorrect spacing inside the closed compound `backplane`. |
| `BackwardEngineer` | True | Suggests changing the less common `backward/backwards engineer` to the more usual `reverse engineer`. |
| `BadRap` | True | Changes `bed rap` to the proper idiom `bad rap`. |
| `BainBane` | True | Detects mixing up `bain` and `bane`. |
| `BanTogether` | True | Detects and corrects the common error of using `ban together` instead of the idiom `band together`, which means to unite or join forces. |
| `BareBones` | True | Corrects `bare-bone` to `bare-bones`. |
| `BareInMind` | True | Ensures the phrase `bear in mind` is used correctly instead of `bare in mind`. |
| `BareWithMe` | True | Corrects `bare with` to `bear with`. |
| `BarelyUn` | True | Flags using `barely` with a negative adjective starting with `un-` (`barely unusable`, etc.), which is a kind of double negative. |
| `BatedBreath` | True | Changes `baited breath` to the correct `bated breath`. |
| `BeAgree` | True | A collection of linters that can be run as one. |
| `BeAllowed` | True | Ensures the passive form uses `be allowed` after future negatives. |
| `BeBiased` | True | Detects incorrect use of 'be + verb' instead of `be + adjective`. |
| `BeConcerned` | True | Detects incorrect use of 'be + verb' instead of `be + adjective`. |
| `BePrejudiced` | True | Detects incorrect use of 'be + verb' instead of `be + adjective`. |
| `BeRightBack` | True | Expands an initialism. |
| `BeShocked` | True | Detects incorrect use of 'be + verb' instead of `be + adjective`. |
| `BeWorried` | True | Detects incorrect use of 'be + verb' instead of `be + adjective`. |
| `BeckAndCall` | True | Fixes eggcorns of `beck and call`. |
| `BeenThere` | True | Corrects the misspelling `bee there` to the proper phrase `been there`. |
| `Beforehand` | True | `Beforehand` functions as a fixed adverb meaning ‘in advance’; writing it as two words or with a hyphen is nonstandard and can jar readers. |
| `BehindTheScenes` | True | Corrects `behind the scene` to `behind the scenes`. |
| `BellowBelow` | True | Looks for `bellow` wrongly used when `below` is intended. |
| `BesideThePoint` | True | Corrects `besides the point` to `beside the point`. |
| `BesidesFor` | True | Replaces nonstandard `besides for` or `beside for` with `besides`, `except for`, or `other than`. |
| `BestOfAllTime` | True | Checks for nonstandard `of all times` in superlatives instead of singular `time` |
| `BestRegards` | True | In valedictions, `best` expresses your highest regard—avoid the typo `beat regards`. |
| `BetterOffPhrase` | True | Rewrites `better of` to `better off` in common comparative phrasing. |
| `BetterOffServed` | True | Corrects `better off served` to `better off` or `better served`. |
| `BetterOffWith` | True | Corrects `better of with` to `better off with`. |
| `BewareOf` | True | The verb `beware` naturally pairs with `of` before the noun being warned about, so swap other prepositions for clarity. |
| `BlacklistWhitelist` | True | Normalize the two-word sequence `black list`/`white list` so it matches the established compound noun or verb. |
| `BlanketStatement` | True | Corrects common errors in the phrase `blanket statement`. |
| `BluRayHyphen` | True | Joins the two-word spelling of the optical disc format into the standard compound form. |
| `BoarderBorder` | True | Flags the eggcorn `boarder` (a lodger) where `border` (an edge/boundary) is intended. |
| `Bollocks` | True | Corrects `bullocks` to `bollocks` when the meaning is `nonsense`. |
| `BoringWords` | False | This rule looks for particularly boring or overused words. Using varied language is an easy way to keep a reader's attention. |
| `Bought` | True | Replaces the incorrect past-tense spelling `bough` with `bought` after subject pronouns. |
| `BrandBrandish` | True | Looks for `brandish` wrongly used when `brand` is intended. |
| `Brutality` | True | Suggests the more standard and common synonym `brutality`. |
| `BuiltIn` | True | English convention treats `built-in` as a single, attributive adjective—meaning something integrated from the outset—whereas other forms like `in built` are nonstandard and can feel awkward to readers. |
| `ByAccident` | True | Incorrect preposition: `by accident` is the idiomatic expression. |
| `ByExtension` | True | Corrects `by extent` to `by extension`. |
| `ByHand` | True | Corrects `by hands` to `by hand`, as `by hand` is the standard phrase for manual construction. |
| `ByOnesOwn` | True | Fixes incorrect phrases like `by my own` by suggesting `on my own` or `by myself`. |
| `ByTheBook` | True | Corrects `by the books` to `by the book`. |
| `ByTheWay` | True | Expands an initialism. |
| `Bypass` | True | Looks for incorrect spacing inside the closed compound `bypass`. |
| `CallItQuits` | True | Corrects wrong variants of the idiom 'call it quits'. |
| `CallThem` | True | Addresses the non-idiomatic phrases `call them as`. |
| `CanBeSeen` | True | Corrects `can be seem` to the proper phrase `can be seen`. |
| `Canada` | True | When referring to provinces, territories, and cities in Canada, make sure to treat them as a proper noun. |
| `Cant` | True | Suggests correcting `cant` to `can't`. |
| `CantWay` | True | Corrects `way` to `wait` in high-confidence contexts such as `can't way to` and `doesn't way for`. |
| `CapitalizeOn` | True | A collection of linters that can be run as one. |
| `CapitalizePersonalPronouns` | True | Forgetting to capitalize personal pronouns, like "I" or "I'm" is one of the most common errors. This rule helps with that. |
| `CaseInPoint` | True | Corrects `case and point` to `case in point`. |
| `CaseSensitive` | True | Ensures `case-sensitive` is correctly hyphenated. |
| `Catch22` | True | Corrects mistakenly using similar-sounding words in the idiom `catch 22`. |
| `CauseItIsBecause` | True | Normalizes informal `cause it is` to the standard subordinating form in explanatory clauses. |
| `CautionaryTale` | True | Corrects confusion between `tale` (story) and `tail` (appendage) in common phrases. |
| `CeaseTo` | True | Detects when `seize to` is likely a typo for `cease to`. |
| `Chalkboard` | True | Looks for incorrect spacing inside the closed compound `chalkboard`. |
| `ChampAtTheBit` | True | Corrects `chomp at the bit` to the idiom `champ at the bit`, which has an equestrian origin referring to the way an anxious horse grinds its teeth against the metal part of the bridle. |
| `ChangeTack` | True | Locates errors in the idioms `to change tack` and `change of tack` to convey the correct meaning of altering one's course or strategy. |
| `ChickenAndEgg` | True | Corrects wrong variants of the `chicken-and-egg` idiom. |
| `ChineseCommunistParty` | True | When referring to the political party, make sure to treat them as a proper noun. |
| `ChockFull` | True | Flags common soundalikes of "chock-full" and makes sure they're hyphenated. |
| `ClaimToFame` | True | Corrects `claim for fame` to the idiom `claim to fame`. |
| `ClicheAccent` | True | A collection of linters that can be run as one. |
| `ClickThroughRate` | True | Hyphenates the verb+preposition pair when it directly precedes rate-style nouns, mirroring how these terms are commonly styled in analytics writing. |
| `ClientOrServerSide` | True | Corrects extraneous apostrophe in `client's side` and `server's side`. |
| `CloseTightKnit` | True | Corrects `close-nit` and `tight-nit` to `close-knit` and `tight-knit`. |
| `CloudOnesJudgement` | True | Corrects the malapropism `clown one's judgement` to `cloud one's judgement`. |
| `CodeInWriteIn` | True | Corrects the wrong preposition `on` to `in` when referring to writing code. |
| `Codebase` | True | Looks for incorrect spacing inside the closed compound `codebase`. |
| `Codebases` | True | Looks for incorrect spacing inside the closed compound `codebases`. |
| `ColdModalTypo` | True | Rewrites `cold` to `could` when it appears in common subject-plus-verb modal contexts. |
| `Combinate` | True | Suggests replacing the nonstandard verb `combinate` with the standard `combine`. |
| `ComeAcross` | True | Corrects common errors in `come across`. |
| `ComfortableWith` | True | Corrects `comfortable of` to `comfortable with`. |
| `CommaFixes` | True | Fix common comma errors such as no space after, erroneous space before, etc., Asian commas instead of English commas, etc. |
| `CommitmentTo` | True | Corrects `commitment toward/towards` to `commitment to`. |
| `CompaniesProductsAndTrademarks` | True | Ensure proper capitalization of companies, products, and trademarks. |
| `CompeteWithEachOther` | True | Corrects `compete over each other` to `compete with each other` |
| `ComplainAsNoun` | True | Corrects the use of `complain` as a noun. |
| `CompoundNouns` | True | Detects compound nouns split by a space and suggests merging them when both parts form a valid noun. |
| `CompoundSubjectI` | True | Promotes `I` in compound subjects headed by a possessive determiner. |
| `ComprisesOf` | True | `Comprises` already contains the notion of `of`, so following it with another `of` is redundant. |
| `CompulseToCompel` | True | Suggests replacing the obsolete or archaic verb `compulse` with the standard `compel`. |
| `CondensateVerb` | True | Suggests replacing the nonstandard verb `condensate` with the standard `condense`. |
| `CondenseAllThe` | True | Suggests removing `of` in `all of the` for a more concise phrase. |
| `Confident` | True | This linter detects instances where the noun `confidant` is incorrectly used in place of the adjective `confident`. `Confidant` refers to a trusted person, whereas `confident` describes certainty or self-assurance. The rule suggests replacing `confidant` with `confident` when used in an adjectival context. |
| `ConfirmThat` | True | Corrects `conform` typos to `confirm`. |
| `ConstituteAs` | True | Removes extraneous `as` after the verb `constitute`. |
| `ConvenientStore` | True | Attempts to detect when `convenient store` is mistake for `convenience store`. |
| `CoolCalmCollected` | True | Corrects the malapropism `cool, calm, and collective` to use the correct `collected`. |
| `Copyright` | True | Corrects `copywrite` to `copyright`. `Copywrite` refers to writing copy, while `copyright` is the legal right to creative works. |
| `CorrectNumberSuffix` | True | When making quick edits, it is common for authors to change the value of a number without changing its suffix. This rule looks for these cases, for example: `2st`. |
| `Countries` | True | When referring to Countries, make sure to treat it as a proper noun. |
| `CoursingThroughVeins` | True | In English idioms, `to course` means to flow rapidly—so avoid the eggcorn `cursing through veins.` |
| `CraveFor` | True | There should be no `for` after the verb `crave`. |
| `CriteriaPhenomena` | True | The words “criteria” and “phenomena” are the plurals of “criterion” and “phenomenon”, respectively. They are often incorrectly used with the wrong number. |
| `CrossPlatform` | True | Unlike some compound modifiers, `cross-platform` should always be hyphenated. |
| `CureFor` | True | Flags `cure against` and prefers the standard `cure for` pairing. |
| `CuriousAbout` | True | Corrects `curious of` and `curious on` to `curious about`. |
| `CurrencyPlacement` | True | The location of currency symbols varies by country. The rule looks for and corrects improper positioning. |
| `CuttingAgeEggcorn` | True | Corrects the eggcorn `cutting age` or `cutting-age` to `cutting-edge` or `cutting edge`. |
| `Cybersec` | True | Expands the informal abbreviation `cybersec` to `cybersecurity`. |
| `Damages` | True | Checks for plural `damages` not in the context of a court case. |
| `DampSquib` | True | Corrects the eggcorn `damp squid` to `damp squib`, ensuring the intended meaning of a failed or underwhelming outcome. |
| `Dashes` | True | Writers often type `--` or `---` expecting their editor to convert them into proper dashes. Replace these sequences with the correct characters: use an en dash (–) for ranges or connections and an em dash (—) for a break in thought. |
| `DateBackFrom` | True | Corrects the blend of `date from` and `date back to` into the nonstandard `date back from`. |
| `DayAndAge` | True | Fixes wrong variants of the idiom `in this day and age`. |
| `DayOneNames` | True | Ensure proper capitalization of Day One and Day One Premium as brand names. |
| `Deadlift` | True | Looks for incorrect spacing inside the closed compound `deadlift`. |
| `DefiniteArticle` | True | The name of the word `the` is `definite article`. |
| `DegreesKelvin` | True | Corrects use of `degrees kelvin` to `kelvins`. |
| `DegreesKelvinSymbol` | True | Corrects use of `°K` to `K`. |
| `DenyOffer` | True | Corrects `deny` when used with `offer` to `decline` or `reject`. |
| `DependOf` | True | Corrects the wrong preposition in `depend of`. |
| `Dereference` | True | A collection of linters that can be run as one. |
| `Desktop` | True | Looks for incorrect spacing inside the closed compound `desktop`. |
| `DespiteItIs` | True | Corrects `despite` being used with the wrong form of `is`. |
| `DespiteOf` | True | Corrects the misuse of `despite of` and suggests the proper alternatives `despite` or `in spite of`. |
| `Devops` | True | Looks for incorrect spacing inside the closed compound `devops`. |
| `DidPast` | True | Corrects past forms of verbs to their base form, when used together with "did". |
| `Didnt` | True | Corrects `dint` to `didn't` after subject pronouns. |
| `DigUnderTheHood` | True | Detects the mixed metaphor of `digging under the hood/bonnet`. |
| `DigestiveTract` | True | Corrects `digestive track` to `digestive tract`. |
| `DiscourseMarkers` | True | Flags sentences that begin with a discourse marker but omit the required following comma. |
| `Discuss` | True | Removes unnecessary `about` after `discuss`. |
| `DisjointPrefixes` | True | Looks for words with their prefixes written with a space or hyphen between instead of joined. |
| `DissembleDisassemble` | True | Tries to detect `dissemble` used instead of `disassemble` by mistake. |
| `DoIAdjective` | True | Swaps the helping verb `do` for `am` in `Do I <adjective>` questions so they use the correct linking verb. |
| `DoMistake` | True | Corrects `do a mistake` to `make a mistake`. |
| `DoNotWant` | True | In English, negation still requires the complete verb form (`want`), so avoid truncating it to `wan.` |
| `DoToDueTo` | True | Corrects the typo `do to` when it is intended to mean `due to` in causal phrases. |
| `DoesOrDose` | True | Tries to correct typos of `dose` to `does`. |
| `DoinToDoing` | True | Corrects `doin` to `doing`. |
| `DontCan` | True | Corrects `don't can` to `can't` or `cannot`. |
| `DotInitialisms` | True | Ensures common initialisms (like "i.e.") are properly dot-separated. |
| `DoubleCheckHyphen` | True | Normalizes the common two-word form `double check` to `double-check`. |
| `DoubleClick` | True | Encourages hyphenating `double-click` and its inflections. |
| `DoubleDown` | True | Corrects `dabble down` to `double down`. |
| `DoubleEdgedSword` | True | Corrects variants of `double-edged sword`. |
| `DoubleModal` | True | Two modal verbs in a row are rarely grammatical; remove one of them. |
| `DoubleNegative` | True | Replaces the determiner `no` with `any` when it follows the auxiliary `didn't/did not` plus a main verb (e.g., have, need, want, make, take, get) so the clause contains only one negation. |
| `DoublePossessiveNounPhrase` | True | Detects redundant possessive constructions like `my latter half of my book`. |
| `DueDiligence` | True | Corrects `do diligence` to `due diligence`. |
| `DuringAges` | True | The idiomatic duration is 'for ages', so swap the initial preposition whenever the words refer to a general span. |
| `EachAndEveryOne` | True | Corrects `each and everyone` to `each and every one`. |
| `EachOthersPossessive` | True | Rewrites `each others` to `each other's` when it modifies a following noun phrase. |
| `EagleEyed` | True | Treats the phrase as a compound modifier and replaces the space with a hyphen so it reads like one idea. |
| `EasyGoingCompoundAdjective` | True | Adds a hyphen in `easy going` when it directly describes a following noun. |
| `EggYolk` | True | Corrects the eggcorn `egg yoke`, replacing it with the standard culinary term `egg yolk`. |
| `EllipsisLength` | True | Make sure you have the correct number of dots in your ellipsis. |
| `ElsePossessive` | True | Detects missing apostrophes in phrases like `someone elses book` and suggests the correct possessive form `else’s`. |
| `EludedTo` | True | Corrects `eluded to` to `alluded to` in contexts referring to indirect references. |
| `EnMasse` | True | Detects variants like `on mass` or `in mass` and suggests `en masse`. |
| `EnRoute` | True | Detects variants like `on route` or `in route` and suggests `en route`. |
| `EnvironmentVariable` | True | A collection of linters that can be run as one. |
| `EverEvery` | True | Tries to correct typos of `every` instead of `ever`. |
| `EverPresent` | True | Corrects the missing hyphen in `ever present` to the compound adjective `ever-present`. |
| `EverPronounRelPronoun` | True | Removes unnecessary redundant relative pronoun after `whatever`, `whoever`, etc. |
| `EverSince` | True | Corrects `every since` to `ever since`. |
| `EveryOnceAndAgain` | True | Corrects `every once and again` to `every once in a while` or `once again`. |
| `EverySingleOneOf` | True | Detects missing `one` in the phrase 'every single one of'. |
| `EveryTime` | True | Corrects `everytime` to `every time`. |
| `Everybody` | True | Looks for incorrect spacing inside the closed compound `everybody`. |
| `Everyday` | True | This rule tries to sort out confusing the adjective `everyday` and the adverb `every day`. |
| `Everyone` | True | Looks for incorrect spacing inside the closed compound `everyone`. |
| `Everywhere` | True | Looks for incorrect spacing inside the closed compound `everywhere`. |
| `ExMachina` | True | A collection of linters that can be run as one. |
| `Excellent` | True | Provides a stronger word choice by replacing `very good` with `excellent` for clarity and emphasis. |
| `ExceptOf` | True | Corrects `except of` to `except for` or `exception of`. |
| `ExitedExcitedContext` | True | Changes `exited` to `excited` when the sentence indicates enthusiasm or anticipation. |
| `ExpandAlgorithm` | True | Expands the abbreviation `algo` to the full word `algorithm` for clarity. |
| `ExpandAlloc` | True | Expands the abbreviation `alloc` to the full word `allocate` or `allocation` for clarity. |
| `ExpandArgument` | True | Expands the abbreviation `arg` to the full word `argument` for clarity. |
| `ExpandBecause` | True | Expands the informal abbreviation `cuz` to the full word `because` for formality. |
| `ExpandConfiguration` | True | A collection of linters that can be run as one. |
| `ExpandControl` | True | Expands the informal abbreviation `ctrl` to the full word `control` for clarity. |
| `ExpandCoordinate` | True | Expands the abbreviation `coord` to the full word `coordinate` for clarity. |
| `ExpandDecl` | True | Expands the abbreviation `decl` to the full word `declaration` or `declarator` for clarity. |
| `ExpandDependencies` | True | Expands the abbreviation `deps` to the full word `dependencies` for clarity. |
| `ExpandDereference` | True | Expands the abbreviation `deref` to the full word `dereference` for clarity. |
| `ExpandDirectory` | True | Expands the abbreviation `dir` to the full word `directory` for clarity. |
| `ExpandFavourite` | True | Expands the abbreviations `fav` and `fave` to the full word `favorite` or `favourite` for clarity. |
| `ExpandForward` | True | Expands the abbreviation `fwd` to the full word `forward` for clarity. |
| `ExpandGovt` | True | Expands the abbreviation `govt` or `govt.` to the full word `government` for clarity. |
| `ExpandIme` | True | Expands the abbreviation `ime` to the full phrase `in my experience` for clarity. |
| `ExpandLegitimate` | True | Expands the abbreviation `legit` to the full word `legitimate` for clarity. |
| `ExpandMemoryShorthands` | True | Expands memory-related abbreviations (`B`, `kB`, `MB`, `GB`, `TB`, `PB`, `KiB`, `MiB`, `GiB`, `TiB`, `PiB`, etc.) to their full forms (`byte`, `kilobyte`, `megabyte`, `gigabyte`, `terabyte`, `petabyte`, `kibibyte`, `mebibyte`, `gibibyte`, `tebibyte`, `pebibyte`, etc.). |
| `ExpandMinimum` | True | Expands the abbreviation `min` to the full word `minimum` for clarity. |
| `ExpandNotification` | True | Expands the abbreviation `notif` to the full word `notification` for clarity. |
| `ExpandParameter` | True | Expands the abbreviation `param` to the full word `parameter` for clarity. |
| `ExpandPeople` | True | Expands the abbreviation `ppl` to the full word `people` for clarity. |
| `ExpandPerformance` | True | Expands the abbreviation `perf` to the full word `performance` for clarity. |
| `ExpandPointer` | True | Expands the abbreviation `ptr` to the full word `pointer` for clarity. |
| `ExpandPreference` | True | A collection of linters that can be run as one. |
| `ExpandPrevious` | True | Expands the abbreviation `prev` to the full word `previous` for clarity. |
| `ExpandStandardInputAndOutput` | True | Expands the abbreviations `stdin`, `stdout`, and `stderr` to the full words `standard input`, etc. for clarity. |
| `ExpandThough` | True | Expands the informal spelling `tho` to the standard word `though`. |
| `ExpandThrough` | True | Expands the informal spelling `thru` to the standard word `through`. |
| `ExpandTimeShorthands` | True | Expands time-related abbreviations (`hr`, `hrs`, `min`, `mins`, `sec`, `secs`, `ms`, `msec`, `msecs`) to their full forms (`hour`, `hours`, `minute`, `minutes`, `second`, `seconds`, `millisecond`, `milliseconds`). |
| `ExpandVulnerability` | True | Expands the abbreviation `vuln` to the full word `vulnerability` for clarity. |
| `ExpandWith` | True | Expands the abbreviation `w/` to the full word `with` for clarity. |
| `ExpandWithout` | True | Expands the abbreviation `w/o` to the full word `without` for clarity. |
| `Expat` | True | Corrects the mistake of writing `expat` as two words. |
| `Expatriate` | True | Fixes the misinterpretation of `expatriate`, ensuring the correct term is used for individuals residing abroad. |
| `ExplainLikeImFive` | True | Expands an initialism. |
| `ExplanationMark` | True | Corrects the eggcorn `explanation mark/point` to `exclamation mark/point`. |
| `ExtendOrExtent` | True | Corrects `extend` to `extent` when the context is a noun. |
| `FaceFirst` | True | Ensures `face first` is correctly hyphenated as `face-first` when used before `into`. |
| `FairBit` | True | Corrects malapropisms of `a fair bit`. |
| `FallBelow` | True | Flags redundant usage of `below` after fall distances. |
| `Fanfare` | True | Looks for incorrect spacing inside the closed compound `fanfare`. |
| `FarAndFewBetween` | True | Corrects `far and few between` to the standard idiom `few and far between`. |
| `FarBeIt` | True | Flags misuse of `far be it` and suggests using `from` when it is followed by `for` |
| `FascinatedBy` | True | Ensures the correct prepositions are used with `fascinated` (e.g., `fascinated by` or `fascinated with`). |
| `FastPaste` | True | Detects incorrect usage of `fast paste` or `fast-paste` and suggests `fast-paced` as the correct phrase. |
| `FatalOutcome` | True | Replaces `fatal outcome` with the more direct term `death` for conciseness. |
| `FedUpWith` | True | Corrects `fed up of` to `fed up with` in dialects other than British English. |
| `FeelFell` | True | Corrects some expressions using `fell` where `feel` is correct. |
| `FellowCoRedundancy` | True | Corrects redundant use of `fellow` with `co-`. |
| `FetalPosition` | True | Ensures the correct use of `fetal position`, avoiding confusion with `feeble position`, which is not a standard phrase. |
| `FewUnitsOfTimeAgo` | True | Corrects some expressions using `few` where `a few` is correct. |
| `FibreOptic` | True | Corrects `fiber optics` to `fiber optic` when used as a compound adjective. |
| `FillerWords` | True | Removes filler words. |
| `FindFine` | True | Fixes the common typo where writers write `find` when they mean `fine`. |
| `FindOut` | True | Flags `find out` when a plain `find` is the better choice. |
| `FinishingTouches` | True | Corrects `finish touches` to `finishing touches`. |
| `FirstAidKit` | True | Detects when “kid” after “aid”, “starter”, “travel”, or “tool” should be “kit” (a set of supplies). |
| `FirstPersonModifierHyphen` | True | Adds a hyphen to ordinal-person modifiers when they directly describe a following noun. |
| `FishNorFowl` | True | Corrects `neither fish nor foul` and `neither fish nor bird` to `neither fish nor fowl`. |
| `FlauntForFlout` | True | Corrects `flaunt` to `flout` when used with rule-like nouns. |
| `FleshOutVsFullFledged` | True | Corrects mixing up `flesh out` and `full fledged`. |
| `FoamAtTheMouth` | True | Corrects the idiom `foam out the mouth` to the standard `foam at the mouth`. |
| `FondOn` | True | Flags `fond on` and suggests `found on` or `fond of`. |
| `FootInchMinuteSecondSymbols` | True | Corrects the use of typewriter-style apostrophes and quotes for measurements to Unicode prime and double prime symbols. |
| `FootTheBill` | True | Corrects `flip the bill` to `foot the bill`. |
| `ForALongTime` | True | Eliminates the incorrect merging in `for along time`. |
| `ForAWhile` | True | Corrects the missing article in `for while`, forming `for a while`. |
| `ForArgumentsSake` | True | Corrects `for argument sake` to `for argument's sake`. |
| `ForFreeOfCharge` | True | Corrects `for free of charge` to either `for free` or `free of charge`. |
| `ForNoun` | True | Corrects the archaic or mistaken `fro` to `for` when followed by a noun. |
| `ForSameReason` | True | A linter for detecting incorrect use of `reason` vs `reasons` in certain contexts. |
| `ForTheMostPart` | True | Corrects `for most part` to `for the most part`. |
| `ForTheNthTime` | True | Corrects missing `the` for occasions like `on third time` -> `on the third time`. |
| `ForWhatItsWorth` | True | Expands an initialism. |
| `ForYourInformation` | True | Expands an initialism. |
| `FormativeYears` | True | Flags the misuse of `formidable years` when `formative years` is likely intended. This rule distinguishes between the shaping of character (`formative`) and the inspiring of fear or awe (`formidable`). |
| `FreePredicate` | True | Helps swap in `free` when a linking verb is followed by the noun `fee`. |
| `FreeRein` | True | Ensures the correct use of `free rein`, avoiding confusion with `free reign`, which incorrectly suggests authority rather than freedom of action. |
| `Freezing` | True | Encourages vivid writing by suggesting `freezing` instead of weaker expressions like `very cold.` |
| `FriendOfMe` | True | Corrects wrong pronoun usage in constructions like `a friend of me`. |
| `FromTheGetGo` | True | Ensures `from the get-go` is correctly hyphenated, preserving the idiom’s meaning of ‘from the very beginning’. |
| `FullToTheBrim` | True | Corrects the wrong preposition in the idiom `full` or `filled to the brim`. |
| `Furthermore` | True | Looks for incorrect spacing inside the closed compound `furthermore`. |
| `FuzzyLogic` | True | Corrects `fussy logic` to `fuzzy logic`. |
| `GetAccessAt` | True | Flags `get access at` and suggests replacing `at` with `to`. |
| `GetPassGoPass` | True | Corrects `pass` to `past` after `get` and `go`. |
| `GetRidOf` | True | Corrects common misspellings of the idiom `get rid of`. |
| `GetUsedTo` | True | Corrects `used of` to `used to`. |
| `GildedAge` | True | If referring to the period of economic prosperity, the correct term is `Gilded Age`. |
| `GoMissing` | True | Corrects `become missing` to `go missing`. |
| `GoSoFarAsTo` | True | Flags 'go so far to' when it should be 'go so far as to' to express going beyond expectations |
| `GoToSleep` | True | Corrects `go into sleep` to `go to sleep`. |
| `GoToWar` | True | Replaces `go at war` with `go to war`. |
| `GoggleBrand` | True | Replaces the misspelling `goggle` when it is paired with a well-known Google service. |
| `GoingTo` | True | Corrects `gong to` to the intended phrase `going to`. |
| `Gonna` | True | Corrects the informal contractions `gonna`, `gotta`, and `wanna` to their full forms. |
| `GoodAt` | True | Checks for `good in` used instead of `good at` to describe proficiency with a skill. |
| `GoogleNames` | True | When referring to Google products and services, make sure to treat them as proper nouns. |
| `Gotta` | True | Corrects the informal contractions `gonna`, `gotta`, and `wanna` to their full forms. |
| `GrindToAHalt` | True | Corrects the idiom `grind to halt` to the standard `grind to a halt`. |
| `Guesswork` | True | Looks for incorrect spacing inside the closed compound `guesswork`. |
| `GuineaBissau` | True | Checks for the correct official name of the African country. |
| `HadOf` | True | Flags the unnecessary use of `of` after `had` and suggests the correct forms. |
| `HalfAnHour` | True | Fixes the eggcorn `half an our` to the accepted `half an hour`. |
| `Hallucination` | True | Corrects the misspelling `hallucinization`/`hallucinisation`. |
| `Handful` | True | Keeps the palm-sized quantity expressed by `handful` as one word. |
| `HandfulOfMore` | True | Removes the nonstandard `of` from `handful of more`. |
| `Haphazard` | True | Corrects the eggcorn `half hazard` to `haphazard`, which properly means lacking organization or being random. |
| `HaveAHardTime` | True | Corrects `have hard time` to `have a hard time`. |
| `HaveNegNoAny` | True | Rewrites `no` to `any` in clauses like `haven't done no X` so the sentence keeps a single clear negation. |
| `HavePassed` | True | Suggests `past` for `passed` in case a verb was intended. |
| `HavePronoun` | True | Flags questions that begin with `has` followed by a pronoun that requires `have`, such as `Has we …` or `Has I …`, and suggests the correct auxiliary. |
| `HaveTakeALook` | True | Corrects either `have a look` or `take a look` to the other, depending on the dialect. |
| `Hazzle` | True | A collection of linters that can be run as one. |
| `HeDos` | True | Corrects the misspelling `dos` after `he`, `she`, or `it`. |
| `HeartToHeard` | True | Corrects `heart` or `herd` to `heard` in common `have ... heard of/about` questions. |
| `Hedging` | True | Flags hedging language (e.g. `I would argue that`, `..., so to speak`, `to a certain degree`). |
| `HelloGreeting` | True | Encourages greeting someone with `hello` instead of the homophone `halo`. |
| `HelpedPast` | True | Corrects past forms of verbs to their base form, when used after "helped". |
| `Henceforth` | True | Looks for incorrect spacing inside the closed compound `henceforth`. |
| `Hereby` | True | `Here by` in some contexts should be `hereby` |
| `HiddenIn` | True | Corrects `hidden into` to `hidden in`. |
| `HighLowStandards` | True | Corrects `high/low standard` to `high/low standards` when `standard` is a noun. |
| `Hijack` | True | Corrects misspellings of `hijack`. |
| `HitTheNailOnTheHead` | True | Corrects the eggcorn `hit the nail in the head` to the standard `hit the nail on the head`. |
| `Holidays` | True | When referring to holidays, make sure to treat them as a proper noun. |
| `HolyWar` | True | Corrects misspellings of `holy war`. |
| `HomeInOn` | True | Corrects `hone in on` to `home in on`. |
| `HopHope` | True | Handles common errors involving `hop` and `hope`. Ensures `hop` is used correctly in phrases like `hop on a bus` while correcting mistaken uses of `hope` in contexts where `hop` is expected. |
| `HowDoesCompared` | True | Corrects `how do/does/did X compared/compares to Y` to use `compare`. |
| `HowItLooksLike` | True | Corrects `how ... looks like` to `how ... looks` or `what ... looks like`. |
| `HowMach` | True | Swaps `how mach` or `how match` with the correct quantifier `how much`. |
| `HowTo` | True | Detects the omission of `to` in constructions like `how clone / how install` and suggests `how to …`. |
| `However` | True | Looks for incorrect spacing inside the closed compound `however`. |
| `HumanBeings` | True | Eliminates the incorrect possessive/plural usage like `human's beings` or `humans beings`. |
| `HumanLife` | True | Changes `human live` to `human life`. |
| `HungerPang` | True | Corrects `hunger pain` to `hunger pang`. |
| `HyphenateNumberDay` | True | Ensures a hyphen is used in `X-day` when it is part of a compound adjective, such as `4-day work week`. |
| `IAm` | True | Fixes the incorrect spacing in `I a m` to properly form `I am`. |
| `IAmAgreement` | True | Corrects `I are` to `I am`. |
| `IDo` | True | Corrects `I does` to `I do`. |
| `IDontKnow` | True | Expands an initialism. |
| `IfIRecallCorrectly` | True | Expands an initialism. |
| `IfIUnderstandCorrectly` | True | Expands an initialism. |
| `IfWouldve` | True | Corrects `if I would've done` etc. to `if I had done` etc. |
| `IfYouKnowYouKnow` | True | Expands an initialism. |
| `ImitateFrom` | True | After `imitate ...`, idiomatic phrasing points to the inspiration with `of` instead of `from`. |
| `ImplementIn` | True | Corrects nonstandard `implement into` to `implement in`. |
| `Impressed` | True | Corrects `impressed of` to `impressed by` or `impressed with`. |
| `InADifferentDirection` | True | Detects the incorrect use of the preposition `into` when describing a change in path, strategy, or orientation. A direction is abstract, requiring `in` rather than `into`. |
| `InAHurry` | True | Corrects `in hurry` to `in a hurry`. |
| `InAWhile` | True | Corrects the missing article in `in while`, forming `in a while`. |
| `InAnIdealWorld` | True | Corrects `in ideal world` to `in an ideal world`. |
| `InAnyWay` | True | Corrects ungrammatical `in anyway` to `in any way`. |
| `InCaseYouMissedIt` | True | Expands an initialism. |
| `InDemandInDepth` | True | Checks for `in-demand` and `in-depth` used as adjectives but not hyphenated. |
| `InDetail` | True | Corrects unidiomatic plural `in details` to `in detail`. |
| `InDueCourse` | True | Corrects `do` to `due` in the eggcorn `in do course`. |
| `InFavourOfDoing` | True | Corrects missing `of` in `in favor/favour of doing`, etc. |
| `InHindsight` | True | Corrects incorrect variants of `in hindsight` to the standard phrase. |
| `InLieuOf` | True | Corrects the misspelling `in lue of` to `in lieu of`. |
| `InMyHumbleOpinion` | True | Expands an initialism. |
| `InMyOpinion` | True | Expands an initialism. |
| `InNeedOf` | True | Corrects `in need for` to `in need of`. |
| `InOfItself` | True | A collection of linters that can be run as one. |
| `InOnTheCards` | True | Corrects either `in the cards` or `on the cards` to the other, depending on the dialect. |
| `InOnesDefense` | True | Corrects `to my defense` to `in my defense` when it introduces a justification, but not after verbs of motion such as `came to my defense`. |
| `InRealLife` | True | Expands an initialism. |
| `InRetaliationTo` | True | Corrects `in retaliation to` to `in retaliation for` or `in response to`. |
| `InStock` | True | Corrects `on stock` to `in stock`. |
| `InThe` | True | Detects and corrects a spacing error where `in the` is mistakenly written as `int he`. Proper spacing is essential for readability and grammatical correctness in common phrases. |
| `InTheFirstPlace` | True | Corrects `at the first place` to `in the first place`. |
| `InTheGrandSchemeOfThings` | True | Corrects nonstandard variants of `in the grand scheme of things`. |
| `InTheMoodFor` | True | Corrects wrong preposition usage with `mood`. |
| `InTheSameVein` | True | Corrects wrong variants of `in the same vein`. |
| `InThisThatRegard` | True | Corrects `in this/that regards` to `in this/that regard`. |
| `InTimeFromNow` | True | Checks for redundant use of `in` before [period of time] together with `from now` after it. |
| `IncidentReport` | True | A collection of linters that can be run as one. |
| `IncludingButNotLimitedToPunctuation` | True | Adds the conventional commas around `including, but not limited to,` when used parenthetically. |
| `InflectedVerbAfterTo` | True | This rule looks for `to verb` where `verb` is not in the infinitive form. |
| `InflectionPoint` | True | Corrects `infliction point` to `inflection point`. |
| `Initiatively` | True | Corrects nonstandard `initiatively`. |
| `Insensitive` | True | Suggests the more standard and common synonym `insensitive`. |
| `Insofar` | True | Looks for incorrect spacing inside the closed compound `insofar`. |
| `InspiredBy` | True | Corrects `inspired from` to `inspired by`, as `by` is the standard preposition for indicating the source of inspiration. |
| `Instead` | True | Looks for incorrect spacing inside the closed compound `instead`. |
| `InsteadOf` | True | Corrects the archaic or mistaken separation `in stead of` to `instead of` in everyday usage. |
| `Insurmountable` | True | Suggests the more standard and common synonym `insurmountable`. |
| `Intact` | True | Looks for incorrect spacing inside the closed compound `intact`. |
| `InterestedIn` | True | Ensures the correct preposition is used with the word `interested` (e.g. `interested in`). |
| `IntroCueCommaBeforeThanks` | True | Normalizes the common refusal phrase by inserting the missing comma. |
| `InvestIn` | True | `Invest` is traditionally followed by 'in,' not `into.` |
| `IsBeenAuxSequence` | True | Rewrites `is been` to a standard perfect-passive form. |
| `IsKnownFor` | True | Typo: `known` is the correct past participle. |
| `ItAreTheOne` | True | A linter skeleton for contributors to copy into `harper_core/src/linting/` and rename. |
| `ItCan` | True | Corrects the misspelling `It cam` to the proper phrase `It can`. |
| `ItLooksLikeThat` | True | Corrects `it looks like that` to just `it looks like`. |
| `ItTimeAuxiliary` | True | Fixes missing auxiliary usage in `it time to/for ...` patterns by inserting the contraction form. |
| `ItsContraction` | True | Detects places where the possessive `its` should be the contraction `it's`, including before verbs/clauses and before proper nouns after opinion verbs. |
| `ItsPossessive` | True | In English, possessive pronouns never take an apostrophe. Use `its` to show ownership (e.g. “its texture”) and avoid confusing it with `it's`, which always means “it is” or “it has.” |
| `Itself` | True | Looks for incorrect spacing inside the closed compound `itself`. |
| `IveGotTo` | True | Corrects the slip `I've go to` to the idiomatic `I've got to`. |
| `JawDropping` | True | Corrects `jar-dropping` to `jaw-dropping`, ensuring the intended meaning of something that causes amazement. |
| `JealousOf` | True | Encourages the standard preposition after `jealous`. |
| `JetpackNames` | True | Ensure proper capitalization of Jetpack-related terms. |
| `JohnsHopkins` | True | Recommends the proper spelling `Johns Hopkins`. |
| `JumpTheGun` | True | Detects incorrect usage of the `jump the gun` idiom. |
| `JustDeserts` | True | Ensures `just deserts` is used correctly, preserving its meaning of receiving an appropriate outcome for one's actions. |
| `Keystroke` | True | Looks for incorrect spacing inside the closed compound `keystroke`. |
| `Keystrokes` | True | Looks for incorrect spacing inside the closed compound `keystrokes`. |
| `KidFriendly` | True | In English, when a noun acts as an adjective in a compound modifier, it remains in its singular form (e.g., `kid-friendly`, not `kids-friendly`). |
| `KindOf` | True | Corrects `kinda of` to `kind of`. |
| `KindRegards` | True | Changes `kid regards` to `kind regards`. |
| `KindSortOf` | True | Flags `kind if` or `sort off` that stand before qualifiers so the filler `of` stays intact. |
| `KnowNothingVerb` | True | Fixes `no` to `know` in common `subject + no nothing` constructions. |
| `Koreas` | True | When referring to the nations, make sure to treat them as a proper noun. |
| `Laos` | True | When referring to provinces and cities in Laos, make sure to treat them as a proper noun. |
| `Laptop` | True | Looks for incorrect spacing inside the closed compound `laptop`. |
| `LastButNotLeast` | True | Corrects common errors in the phrase `last but not least`. |
| `LastDitch` | True | Corrects wrong variations of the idiomatic adjective `last-ditch`. |
| `LastNight` | True | Flags `yesterday night` and suggests the standard phrasing `last night`. |
| `LaughOfAt` | True | Warns when `laugh` takes `of` before a person or pronoun and nudges writers toward the conventional `at`. |
| `LayoutVerb` | True | Flags nonstandard verb forms of `layout` (like `layouted` and `layouting`) and suggests the standard English verb forms (`laid out` and `laying out`). |
| `LeadRiseTo` | True | Corrects `leads rise to` to `gives rise to`. |
| `LeaveToFor` | True | When describing travel plans that include a destination and a time frame, prefer `leave for a destination` instead of `leave to a destination`. |
| `LeavingInDroves` | True | Corrects `leaving in drones` to `leaving in droves`. |
| `LeftRightHand` | True | Ensures `left hand` and `right hand` are hyphenated when used as adjectives before a noun, such as in `left-hand side` or `right-hand corner`. |
| `LessWorse` | True | Suggests alternatives to `less/least worse/worst` for more standard, clearer comparisons. |
| `LetAlone` | True | Changes `let along` to `let alone`. |
| `LetMeKnow` | True | Expands an initialism. |
| `LetToDo` | True | Corrects extraneous `to` after `let`. |
| `LetsConfusion` | True | It's often hard to determine where the subject should go with the word `let`. This rule attempts to find common errors with redundancy and contractions that may lead to confusion for readers. |
| `LevelOfDetails` | True | Corrects `level of details` to `level of detail` or `levels of detail`. |
| `Lifetime` | True | Looks for incorrect spacing inside the closed compound `lifetime`. |
| `LikeAsIf` | True | Corrects redundant `like as if` to `like` or `as if`. |
| `LikeThePlague` | True | Corrects `like a plague` to `like the plague`. |
| `LikeTheresNoTomorrow` | True | Corrects `like no tomorrow` to `like there's no tomorrow`. |
| `LikelyHood` | True | Treat the split tokens as one compound word (`likelihood`) whenever the adjective `likely` precedes `hood`. |
| `Likewise` | True | Looks for incorrect spacing inside the closed compound `likewise`. |
| `LinesOfCode` | True | Corrects pluralizing the wrong noun in `lines of code`. |
| `LinkedList` | True | A collection of linters that can be run as one. |
| `LitotesDirectPositive` | True | Offers direct-positive alternatives when double negatives might feel heavy. |
| `LittleKnown` | True | Fixes nonstandard uses of `little known`. |
| `LittleToNo` | True | Converts the clunky or unidiomatic phrase `no to little` into the standard English idiom `little to no`. |
| `LongSentences` | True | This rule looks for run-on sentences, which can make your work harder to grok. |
| `LongTimeAgo` | True | Corrects the missing article `a` in the phrase `long time ago`. |
| `LookDownOnesNose` | True | Corrects `look one's nose down` to `look down one's nose` |
| `LookForwardTo` | True | Corrects `look forward for` to `look forward to`. |
| `LookInto` | True | Merges the split preposition when a look-verb is followed by a clause that starts with a question word. |
| `Lookalike` | True | Corrects `look-a-like` to `look alike` or `look-alike`. |
| `LookingForwardTo` | True | This rule identifies instances where the phrase `looking forward to` is followed by a base form verb instead of the required gerund (verb + `-ing` form). |
| `LooksLikes` | True | This rule turns `looks likes`, `looked likes`, and `looking likes` into the idiomatic `look ... like`. |
| `Lots` | True | A collection of linters that can be run as one. |
| `LowHangingFruit` | True | Corrects nonstandard variants of `low-hanging fruit`. |
| `MakeDoWith` | True | Corrects `make due` to `make do` when followed by `with`. |
| `MakeItSeem` | True | Corrects `make it seems` to `make it seem`. |
| `MakeSense` | True | Corrects `make senses` to `make sense`. |
| `MakeTheMostOf` | True | Removes redundant `out` in `make the most out of`. |
| `MakeupCompoundNoun` | True | Finds determiner-led noun phrases where the split spelling appears and closes it. |
| `Malaysia` | True | When referring to the states of Malaysia and their capitals, make sure to treat them as a proper noun. |
| `ManagerialReins` | True | Corrects the eggcorn `managerial reigns` to the idiomatic `managerial reins`. |
| `MassExodus` | True | Corrects the eggcorn `max exodues` to the idiomatic `mass exodus`. |
| `MassNouns` | True | Detects mass nouns used as countable nouns. |
| `MayOfPronoun` | True | A collection of linters that can be run as one. |
| `MeansALotTo` | True | Corrects wrong variants of `means a lot for [someone]` to `means a lot to [someone]`. |
| `Meanwhile` | True | Looks for incorrect spacing inside the closed compound `meanwhile`. |
| `MercedesBenzHyphen` | True | Connect the separate words `Mercedes` and `Benz` whenever they appear together so the brand stays consistent with its official styling. |
| `MergeWords` | True | Accidentally inserting a space inside a word is common. This rule looks for valid words that are split by whitespace. |
| `MetaNames` | True | When referring to Meta products and services, make sure to treat them as proper nouns. |
| `MicrosoftNames` | True | When referring to Microsoft products and services, make sure to treat them as proper nouns. |
| `Middleware` | True | Looks for incorrect spacing inside the closed compound `middleware`. |
| `MissingDeterminer` | True | Detects likely missing determiners in common request phrases and offers to insert one where necessary. |
| `MissingPreposition` | True | Locates potentially missing prepositions. |
| `MissingTo` | True | Flags verbs and adjectives like `need`, `want`, or `ready` that are missing `to` before an infinitive. |
| `Misspell` | True | Ensures `misspell` and its inflected forms are written as a single word. |
| `Misunderstand` | True | Looks for incorrect spacing inside the closed compound `misunderstand`. |
| `Misunderstood` | True | Looks for incorrect spacing inside the closed compound `misunderstood`. |
| `Misuse` | True | Looks for incorrect spacing inside the closed compound `misuse`. |
| `Misused` | True | Looks for incorrect spacing inside the closed compound `misused`. |
| `MixedBag` | True | Corrects the eggcorn `mixed bad` to `mixed bag`. |
| `ModalBeAdjective` | True | Looks for `be` missing between a modal verb and adjective. |
| `ModalOf` | True | Detects `of` mistakenly used with `would`, `could`, `should`, etc. |
| `ModalSeem` | True | Detects modal verbs followed by `seen` before adjectives and suggests `seem` or `be`. |
| `Months` | True | Detects months written with a lowercase first letter. |
| `Monumentous` | True | Advises using `momentous` or `monumental` instead of `monumentous` for serious usage. |
| `MootPoint` | True | Corrects `mute` to `moot` in the phrase `moot point`. |
| `MoreAdjective` | False | Looks for comparative adjective constructions with `more` that could use inflected forms. |
| `MoreBetter` | True | Finds redundant paring of `more` or `most` with adjectives already in the comparative or superlative form. |
| `MoreThanMeetsTheEye` | True | Corrects nonstandard and less idiomatic variants of `more than meets the eye`. |
| `MoreThatLikely` | True | Corrects the common typo `more that likely` to `more than likely`. |
| `MostNumber` | True | Corrects `most number` and `most amount` |
| `MostOfTheTimes` | True | Corrects `a lot of the times` and `most of the times` to use singular `time`. |
| `Multicore` | True | Looks for incorrect spacing inside the closed compound `multicore`. |
| `Multimedia` | True | Looks for incorrect spacing inside the closed compound `multimedia`. |
| `MultipleFrequencyAdverbs` | True | Looks for adjacent adverbs of frequency, which will be either redundant or contradictory. |
| `MultipleSequentialPronouns` | True | When editing work to change point of view (i.e. first-person or third-person) it is common to add pronouns while neglecting to remove old ones. This rule catches cases where you have multiple disparate pronouns in sequence. |
| `Multithreading` | True | Looks for incorrect spacing inside the closed compound `multithreading`. |
| `MyHouse` | True | Fixes the typo `mu house` to `my house`. |
| `Myself` | True | Looks for incorrect spacing inside the closed compound `myself`. |
| `NailInCoffin` | True | Corrects `nail on the coffin` to `nail in the coffin` |
| `NailOnTheHead` | True | Replaces hat/had/hit/hid in the idiom `nail on the head` with `head`. |
| `NakedEye` | True | Corrects the wrong preposition used instead of `to`, `with`, or `by` the naked eye. |
| `NationalCapitals` | True | When referring to national capitals, make sure to treat it as a proper noun. |
| `NeedHelp` | True | Changes `ned help` to the correct `need help`. |
| `NeedToNoun` | True | Flags `need to` when it is immediately followed by a noun, which usually means the infinitive verb is missing. |
| `NeitherHereNorThere` | True | A collection of linters that can be run as one. |
| `NerveRacking` | True | Corrects common misspellings and missing hyphen in `nerve-racking`. |
| `NervousWreck` | True | Suggests using `nervous wreck` when referring to a person's emotional state. |
| `NeverMind` | True | Expands an initialism. |
| `NoFrenchSpaces` | True | Stops users from accidentally inserting French spaces. |
| `NoHarmNoFoul` | True | Corrects nonstandard variants of the idiom `no harm, no foul`. |
| `NoLonger` | True | Corrects `not longer` when it should be `no longer`. |
| `NoLongerPronoun` | True | Detects incorrect word order where `no longer` incorrectly precedes a subject pronoun. |
| `NoMatchFor` | True | No match for |
| `NoOxfordComma` | False | The Oxford comma is one of the more controversial rules in common use today. Enabling this lint checks that there is no comma before `and`, `or` or `nor` when listing out more than two ideas. |
| `NobelNoble` | True | Corrects misspellings of `Nobel` Peace Prize. |
| `Nobody` | True | Looks for incorrect spacing inside the closed compound `nobody`. |
| `NominalWants` | True | Ensures you use the correct `want` / `wants` after a nominal. |
| `Nonetheless` | True | Looks for incorrect spacing inside the closed compound `nonetheless`. |
| `NorModalPronoun` | True | Corrects the order of the pronoun and modal verb after `nor`. |
| `NotBeAfterNot` | True | Removes the redundant linking verb that sneaks in between `not` and the predicate after a conjugated `be`. |
| `NotForLackOf` | True | Replaces `not without a lack of` with `not for lack of`. |
| `NotIn` | True | Replaces `no in` with `not in`. |
| `NotLongAfter` | True | A collection of linters that can be run as one. |
| `NotOnly` | True | Corrects `no only` to `not only` before forms of `to be`. |
| `NotOnlyInversion` | True | Corrects `not only it is` to `not only is it` |
| `NotTo` | True | Corrects `no to` to `not to`, ensuring proper negation. |
| `NotablePlaces` | True | Ensure proper capitalization of notable places that are significant regional centers, travel destinations, or have international importance. |
| `Nothing` | True | Looks for incorrect spacing inside the closed compound `nothing`. |
| `Notwithstanding` | True | Looks for incorrect spacing inside the closed compound `notwithstanding`. |
| `NounVerbConfusion` | True | Handles common confusions between related nouns and verbs (e.g., 'advice/advise', 'breath/breathe') |
| `NowKnownAs` | True | Corrects `now know as` to `now known as` for proper grammar. |
| `NowWay` | True | Corrects `now way` to `no way` in high-confidence contexts while avoiding comparative contexts like `now way too`. |
| `Nowadays` | True | Corrects common misspellings of `nowadays`. |
| `Nowhere` | True | Looks for incorrect spacing inside the closed compound `nowhere`. |
| `NumberSuffixCapitalization` | True | You should never capitalize number suffixes. |
| `NumericRangeEnDash` | True | Replaces hyphens and em dashes with en dashes in isolated numeric ranges such as `12–14`. |
| `ObsessPreposition` | True | Ensures valid prepositions are used with `obsess` |
| `OceansAndSeas` | True | When referring to the world's oceans and seas, ensure they are treated as proper nouns. |
| `OfCourse` | True | Corrects common mistaken forms of `of course`, including `of curse`, `off course`, and `ofcourse`, while ignoring valid phrases like `kind of curse`. |
| `OfOff` | True | Looks for instances of `off` that might be typos for `of`. |
| `OffLimits` | True | Corrects `off-limit` to `off-limits`. |
| `OffTheCuff` | True | Ensures `off-the-cuff` is correctly hyphenated. |
| `Oftentimes` | True | Looks for incorrect spacing inside the closed compound `oftentimes`. |
| `OhMyGod` | True | Expands an initialism. |
| `OkToOkay` | True | Corrects `ok` to `okay`. |
| `OldWivesTale` | True | Corrects `old wise tale` to `old wives' tale`, preserving the phrase’s meaning as an unfounded traditional belief. |
| `OldestInTheBook` | True | Detects the idiom `oldest X in the books`, which should use singular `book`. |
| `OnADailyBasis` | True | A collection of linters that can be run as one. |
| `OnFirstGlance` | True | The standard idiom starts with `at` for quick appraisals, so swap the preposition to keep the phrase idiomatic. |
| `OnFloor` | True | This rule identifies incorrect uses of the prepositions `in` or `at` when referring to locations inside a building and recommends using `on the floor` instead. |
| `OnSecondThought` | True | Replaces the nonstandard `on second though` with the common idiom `on second thought` to indicate reconsideration. |
| `OnTheFence` | True | Corrects `on a fence` to `on the fence` for the idiom meaning 'undecided'. |
| `OnTheOtherHand` | True | Expands an initialism. |
| `OnTheSpurOfTheMoment` | True | Ensures the correct use of `on the spur of the moment`, avoiding nonstandard variations. |
| `OnTopOf` | True | Corrects `ontop of` and `in top of` to `on top of`. |
| `OnceInAWhile` | True | Corrects two common malapropisms of `once in a while`. |
| `OnceOrTwice` | True | Detects the mistaken phrase `once a twice` and suggests `once or twice`. |
| `OneAndTheSame` | True | This linter flags instances of the nonstandard phrase `one in the same`. The correct, more accepted form is `one and the same` |
| `OneFellSwoop` | True | A collection of linters that can be run as one. |
| `OneHanded` | True | Treat 'one handed' and 'two handed' as single adjectives before nouns so the measurement stays attached to 'handed'. |
| `OneOfTheSingular` | True | Corrects 'one of the [singular]' to 'one of the [plural]' |
| `OnesOwnAccord` | True | Detects incorrect usage of `on one's own accord` and suggests `of one's own accord`. |
| `OnesSelf` | True | Corrects the generic reflexive pronoun `one's self` to `oneself`. |
| `OpenCompounds` | True | Corrects compound words that should be written as two words. |
| `OpenTheLight` | True | Corrects using `open` instead of `turn on` or `switch on` |
| `OperatingSystem` | True | Ensures `operating system` is used correctly instead of `operative system`. |
| `OrthographicConsistency` | True | Ensures word casing matches the dictionary's canonical orthography. |
| `OughtToBe` | True | Detects the mistaken `out to be` and suggests `ought to be`, while ignoring legitimate phrasal-verb uses such as `turn out to be` and `make it out to be`. |
| `OutOfCuriosity` | True | A linter skeleton for contributors to copy into `harper_core/src/linting/` and rename. |
| `OutOfDate` | True | Ensures that the phrase `out of date` is written with a hyphen as `out-of-date` when used as a compound adjective. |
| `OutOfOutsideTheBox` | True | Checks for incorrect mixing of the idioms `think outside the box` and `out of the box`. |
| `OutOfSync` | True | Corrects `out of sink` to `out of sync` or `out of synch`. |
| `OutOfTheBox` | True | Expands an initialism. |
| `OutOfTheWindow` | True | A linter for the idiom `out (of) the window`. |
| `OverPlus` | True | Detected redundant use of `over` and `plus` used together to bracket a number. |
| `Overall` | True | Looks for incorrect spacing inside the closed compound `overall`. |
| `Overclocking` | True | Looks for incorrect spacing inside the closed compound `overclocking`. |
| `Overload` | True | Looks for incorrect spacing inside the closed compound `overload`. |
| `Overnight` | True | Looks for incorrect spacing inside the closed compound `overnight`. |
| `OvertimeCompoundNoun` | True | Finds job-hours contexts where the split form appears and joins it into the standard compound. |
| `OxfordComma` | True | The Oxford comma is one of the more controversial rules in common use today. Enabling this lint checks that there is a comma before `and`, `or`, or `nor` when listing out more than two ideas. |
| `Oxymorons` | True | Flags oxymoronic phrases (e.g. `amateur expert`, `increasingly less`, etc.). |
| `PaleByComparison` | True | Corrects variants of the idiom "pale by/in comparison" where pale is incorrectly used as an adjective instead of a verb. |
| `PartsOfSpeech` | True | Corrects pluralizing the wrong noun in `part of speech`. |
| `PassedPast` | True | A collection of linters that can be run as one. |
| `PassersBy` | True | Corrects `passerbys` and `passer-bys` to `passersby` or `passers-by`. |
| `PassionateAbout` | True | Corrects `passtionate of` to `passionate about`. |
| `PasswordProtectedHyphen` | True | Keeps the compound adjective together before nouns like folders, files, or web pages so the dependency between them is clear. |
| `PayForPrice` | True | Corrects extraneous `for` when used of charges, fees, prices, etc. |
| `Payed` | True | Corrects `payed` to `paid` and `overpayed` to `overpaid`. |
| `PeaceOfMind` | True | Corrects `piece of mind` to `peace of mind`. |
| `PedalToTheMetal` | True | Corrects the eggcorn `pedal to the medal` to the standard idiom `pedal to the metal`, meaning to accelerate at full speed. |
| `PeekBehindTheCurtain` | True | Corrects `peak behind the curtain` to `peek behind the curtain`. |
| `PerSe` | True | Corrects common misspellings of `per se`. |
| `PhrasalVerbAsCompoundNoun` | True | This rule looks for phrasal verbs written as compound nouns. |
| `Piggyback` | True | Corrects the eggcorn `piggy bag` to `piggyback`, which is the proper term for riding on someone’s back or using an existing system. |
| `PiqueInterest` | True | Detects incorrect usage of `peak` or `peek` when the intended word is `pique`, as in the phrase `you've peaked my interest`. |
| `PlayAFactor` | True | Corrects `play a factor` to `play a part` or `be a factor`. |
| `PleasRequestVerb` | True | Fixes the typo `pleas` when it appears as a request cue before common action verbs. |
| `PleaseTakeALook` | True | Expands an initialism. |
| `PluralDecades` | True | Flags plural decades erroneously using an apostrophe before the `s` |
| `PluralWrongWordOfPhrase` | True | Corrects noun phrases that pluralize the last noun instead of the main noun. |
| `PocketCastsNames` | True | Ensure proper capitalization of Pocket Casts and Pocket Casts Plus as brand names. |
| `PointsOfView` | True | Corrects pluralizing the wrong noun in `point of view`. |
| `PortAuPrince` | True | Checks for the correct official name of the capital of Haiti. |
| `PortoNovo` | True | Checks for the correct official name of the capital of Benin. |
| `PossessiveNoun` | False | Use an apostrophe and `s` to form a noun’s possessive. |
| `PossessiveYour` | True | The possessive form of `you` is more likely before nouns. |
| `PostItNoteHyphen` | True | Standardizes the sticky-note product phrase by joining the first two words. |
| `Postpone` | True | Looks for incorrect spacing inside the closed compound `postpone`. |
| `PrayingMantis` | True | Corrects `preying mantis` to `praying mantis`, ensuring accurate reference to the insect’s characteristic pose. |
| `PreferPleaded` | True | Prefer `pleaded` over `pled`. |
| `PreferPled` | False | Prefer `pled` over `pleaded`. |
| `PreferSneaked` | True | Prefer `sneaked` over `snuck`. |
| `PreferSnuck` | False | Prefer `snuck` over `sneaked`. |
| `PreferenceAsVerb` | True | Corrects `preference` to `prefer`. |
| `PrincipleToPrincipalRoleNoun` | True | Fixes `principle` to `principal` when it appears as an adjective before common role, goal, and priority nouns (for example, `my principle job`). |
| `ProgressiveNeedsBe` | True | Detects the ungrammatical patterns `<pronoun> have …ing` (e.g., `I have …ing`) and `<pronoun>'ve …ing` (e.g., `I've …ing`) and suggests either the present progressive (e.g., `I'm/We're/You're/They're …`) or the present perfect progressive (e.g., `I/We/You/They have been …` or `I've/We've/You've/They've been …`). |
| `PronounAre` | True | Spots the letter `r` used in place of `are` or `you're` after plural first- or second-person pronouns. |
| `PronounContraction` | True | Choosing when to contract pronouns is a challenging art. This rule looks for faults. |
| `PronounInflectionBe` | True | Checks subject–verb agreement for the verb `be`. Third-person singular pronouns (`he`, `she`, `it`) require the singular form `is`, while the plural pronoun `they` takes `are`. The linter flags mismatches such as `He are` or `They is` and offers the correct concord. |
| `PronounKnew` | True | Detects when “new” following a pronoun (optionally with an adverb) is a typo for the past tense “knew.” |
| `PronounVerbAgreement` | True | Ensures pronouns agree with their verbs. |
| `Proofread` | True | Looks for incorrect spacing inside the closed compound `proofread`. |
| `ProperNouns` | True | Ensure proper capitalization of proper nouns. |
| `Provocate` | True | Corrects the misspelling `provocate` to `provoke`. |
| `QuantifierNeedsOf` | True | Detects missing `of` after the quantifier “a couple” when it precedes a plural noun |
| `QuantifierNumeralConflict` | True | Detects quantifier-numeral conflicts |
| `QuestionVerbAgreement` | True | A collection of linters that can be run as one. |
| `QuiteMany` | True | Corrects `quite many` to `quite a few`, which is the more natural and idiomatic phrase in standard English. `Quite many` is considered nonstandard usage. |
| `QuiteQuiet` | True | Helps distinguish between ‘quiet’ (making ‘little noise’) and ‘quite’ (meaning ‘rather’). |
| `QuoteSpacing` | True | Checks that quotation marks are preceded or succeeded by whitespace. |
| `RackOnesBrain` | True | Checks for improper uses of `wrack` or `wreck` instead of `rack` in the idiom `rack one's brain`. |
| `RainbowColoredHyphen` | True | When rainbow-colored or cream-colored describe a noun, replace the space between the color words with a hyphen to keep the modifier cohesive. |
| `RallyToReally` | True | Catches the typo where `rally` sneaks into `be + ...ing` constructions, including common contractions. |
| `RapidFire` | True | Checks to ensure writers hyphenate `rapid-fire`. |
| `ReadsAndWrites` | True | Corrects inconsistent noun or verb forms when `read` and `write` are paired. |
| `RealTrouper` | True | Ensures the correct use of `real trouper`, distinguishing it from `trooper`, which refers to a soldier or police officer. |
| `Really` | True | Expands an initialism. |
| `ReasonForDoing` | True | Corrects `reason of doing` to `reason for doing` etc. |
| `RedundantAcronyms` | True | Identifies redundant acronyms where the last word repeats the last letter's meaning (e.g., `ATM machine` → `ATM` or `automated teller machine`). |
| `RedundantAdditiveAdverbs` | True | Detects redundant additive adverbs. |
| `RedundantAlmostNearly` | True | Detects `almost` and `nearly` redundantly used together. |
| `RedundantFirsts` | True | Looks for redundant use of `first` with verbs that already imply order. |
| `RedundantIIRC` | True | Flags redundant use of 'if' or 'correctly' with `IIRC`, since `IIRC` already stands for 'if I recall correctly'. |
| `RedundantPretty` | True | `Pretty` is redundant when modifying `decent`. Use `decent` alone. |
| `RedundantProgressiveComparative` | True | Detects redundant comparatives like `increasingly more` and `increasingly less`. |
| `RedundantSelf` | True | Detects redundant use of `self-` prefixes with reflexive pronouns (e.g., `self-host it themselves`). |
| `RedundantSuperlatives` | True | Simplifies redundant double positives like `most optimal` to the base form. |
| `RedundantThat` | True | There is rarely a situation where `that that` cannot be condensed into a single token. |
| `Regardless` | True | Looks for incorrect spacing inside the closed compound `regardless`. |
| `RegimenRegiment` | True | Corrects mistaken use of `regiment` (military unit) when `regimen` (routine) was intended. |
| `Regionalisms` | True | Regionalisms |
| `RegularIrregulars` | True | Replaces wrong regular inflections of words with their correct irregular forms. |
| `RelayOnForRely` | True | Corrects the frequent typo where `relay` is used in place of `rely` in the phrase `relay on`. |
| `RepeatedWords` | True | This rule looks for repetitions of words that are not homographs. |
| `Respond` | True | Flags uses of the noun `response` where the verb `respond` is needed after an auxiliary. |
| `ResponsibilityFor` | True | Corrects `take/assume/claim responsibility of` to `take/assume/claim responsibility for`. |
| `ResponsibleFor` | True | Corrects `responsible about` to `responsible for`. |
| `ReverseEngineer` | True | Corrects `reversed engineer` to `reverse engineer`. |
| `RifeWith` | True | Corrects `ripe with` to `rife with`, preserving the phrase’s meaning of being filled with something, often undesirable. |
| `RightClick` | True | Hyphenates right-click style mouse commands. |
| `RiseTheQuestion` | True | Corrects `rise the question` to `raise the question`. |
| `RiseTheRanks` | True | Corrects the nonstandard phrase `rise the ranks` to the standard `rise through the ranks` or `rise from the ranks` |
| `RoadMap` | True | Detects when `roadmap` is used instead of `road map`, prompting the correct spacing. |
| `RogueRouge` | True | Detects mixing up `rogue` and `rouge`. |
| `RollerSkated` | True | Encourages hyphenating the past tense of `roller-skate`. |
| `Roundabout` | True | Looks for incorrect spacing inside the closed compound `roundabout`. |
| `RulesOfThumb` | True | Corrects pluralizing the wrong noun in `rule of thumb`. |
| `RunIntoProblemsOrTrouble` | True | Corrects `running into` `problems` or `trouble` with wrong article, singular, or plural forms. |
| `SafeToSave` | True | Detects `safe` (adjective) when `save` (verb) is intended after modal verbs like `could` or `should`. |
| `SameAs` | True | Corrects the incorrect phrase `same then` to the standard `same as`. |
| `SaveToSafe` | True | Corrects `save to <verb>` to `safe to <verb>` after a form of `be`. |
| `ScantilyClad` | True | Fixes `scandally clad` to `scantily clad`, ensuring clarity in describing minimal attire. |
| `ScapeGoat` | True | Corrects `scape goat` to `scapegoat`, which is the proper term for a person blamed for others' failures. |
| `ScaredOf` | True | Fixes `scared about` to `scared of`, using the standard preposition. |
| `SeamToSeem` | True | Corrects `seam` to `seem` when used as a verb meaning `to appear` or `to give the impression`. |
| `SeemsLikeAdjective` | True | Detects verbs of perception redundantly followed by `like` when used with an adjective. |
| `SeizeControlOf` | True | Corrects `seize control over` to `seize control of`. |
| `SendAnEmailTo` | True | Replaces the verbose phrase `send an email to` with the concise verb `email`. |
| `SentenceCapitalization` | True | The opening word of a sentence should almost always be capitalized. |
| `SetABadExample` | True | Corrects `set up a bad example` to `set a bad example`. |
| `ShootOneselfInTheFoot` | True | Corrects nonstandard variants of 'shoot oneself in the foot'. |
| `Shortcoming` | True | Looks for incorrect spacing inside the closed compound `shortcoming`. |
| `Shortcomings` | True | Looks for incorrect spacing inside the closed compound `shortcomings`. |
| `ShowCase` | True | Corrects `show case` to `showcase`. |
| `ShutdownVerb` | True | Keeps `shutdown` as a noun when it stands alone but swaps it for the phrasal verb `shut down` whenever an auxiliary precedes it. |
| `SideTangent` | True | Corrects redundant `side tangent` and `side tangents` to more concise alternatives. |
| `SimilarLike` | True | The adjective 'similar' pairs with the preposition 'to', so never follow it with 'like'. |
| `SimpleGrammatical` | True | Corrects `simply grammatical` to `simple grammatical` for proper adjective usage. |
| `SimplePastToPastParticiple` | True | Corrects simple past tense verbs to past participle after auxiliary verbs like "have" or "be". |
| `SinceDuration` | True | Detects the use of 'since' with a duration instead of a point in time. |
| `SingleBe` | True | Removes adjacent duplicate inflections of `be`, including contracted forms followed by another `be` verb. |
| `Skyrocket` | True | Looks for incorrect spacing inside the closed compound `skyrocket`. |
| `SlipperySlope` | True | Corrects `slippy slope` to `slippery slope`. |
| `SneakPeekPreview` | True | Corrects the common phrase-level confusion where `peak` is used instead of `peek` after `sneak`. |
| `SneakingSuspicion` | True | Changes `sneaky suspicion` to `sneaking suspicion`. |
| `SomeOfThe` | True | Quantity words such as `some` normally take `of` before a definite article. Including `of` signals that you mean a subset of a larger set, preventing a momentary stumble in comprehension. |
| `SomeWithoutArticle` | True | Detects the redundant article in front of `some` and suggests more natural phrasing. |
| `Somebody` | True | Looks for incorrect spacing inside the closed compound `somebody`. |
| `SomebodyElses` | True | Corrects `somebody else's` when the `'s` is in the wrong place. |
| `Somehow` | True | Looks for incorrect spacing inside the closed compound `somehow`. |
| `Someone` | True | Looks for incorrect spacing inside the closed compound `someone`. |
| `SomethingIs` | True | Flags forms like `somethings` before progressive verbs and suggests using `something's` or `something is`. |
| `SomewhatSomething` | True | Flags the phrase `somewhat of a` in favor of `something of a`, which can be considered more traditional. |
| `Somewhere` | True | Looks for incorrect spacing inside the closed compound `somewhere`. |
| `SoonToBe` | True | Hyphenates `soon-to-be` when it appears before a noun. |
| `SoonerOrLater` | True | Fixes the improper phrase `sooner than later` by suggesting standard alternatives. |
| `SoughtAfter` | True | Correct `sort after` to `sought after` |
| `Spaces` | True | Words should be separated by at most one space. |
| `SpareNoExpense` | True | Corrects `spare no expenses` to `spare no expense`. |
| `SpecialAttention` | True | Changes `spacial attention` to `special attention`. |
| `SpellCheck` | True | Looks and provides corrections for misspelled words. |
| `SpelledNumbers` | False | Most style guides recommend that you spell out numbers less than ten. |
| `SpinalChord` | True | The words `spinal`, `vocal`, `umbilical`, and `electrical` are followed by `cord`, so replace accidental `chord`/`chords`. |
| `SplitWords` | True | Finds missing spaces in improper compound words. |
| `Starving` | True | Encourages vivid writing by suggesting `starving` instead of weaker expressions like `very hungry.` |
| `StateOfTheArt` | True | Detects incorrect usage of `state of art` and suggests `state of the art` as the correct phrase. |
| `StatuteOfLimitations` | True | Corrects `statue of limitations` to `statute of limitations`. |
| `Straightforward` | True | Looks for incorrect spacing inside the closed compound `straightforward`. |
| `StrikeChord` | True | The phrase about resonating with someone is spelled with a chord, not a cord, so fix the typo and keep the idiom intact. |
| `StrikeOfGenius` | True | Detects incorrect usage of `strike of genius` and suggests `stroke of genius` as the correct phrase. |
| `StrikeOfLuck` | True | Detects incorrect usage of `strike of luck` and suggests `stroke of luck` as the correct phrase. |
| `SubjectAndObjectPronoun` | True | Standardizes `subjective pronoun` and `objective pronoun` to the more common `subject -` and `object -`. |
| `SubjectPronoun` | True | Fixes sentences that start with `me and X` by putting the proper noun first and using `I`. |
| `SubjunctiveWasToWere` | True | Ensures proper use of the subjunctive mood in counterfactual conditional statements starting with `if only` or `I wish`. |
| `SuchShame` | True | Corrects `such shame` to `such a shame`. |
| `SufficeItToSay` | True | Corrects `suffice to say` to `suffice it to say`. |
| `SufficientEnough` | True | Corrects redundant `sufficient enough` to either `sufficient` or `enough`. |
| `SummarySummery` | True | Checks for the common confusion between `summary` and `summery`. |
| `SupposedTo` | True | Fixes `suppose to` to the correct `supposed to`. |
| `Surreality` | True | Suggests changing `surrealness` to the more standard `surreality`. |
| `TakeALookTo` | True | Corrects `take a look to`/`have a look to` to correctly use `at`. |
| `TakeCareOf` | True | Corrects `take care about` to `take care of`. |
| `TakeControlOf` | True | Corrects `take control over` to `take control of`. |
| `TakeItPersonally` | True | Corrects `take it personal` to `take it personally`. |
| `TakeMedicine` | True | Encourages pairing medicine-related nouns with verbs like `take` or `swallow` instead of `eat`. |
| `TakePrideIn` | True | Corrects `take pride of` to `take pride in`. |
| `TalkToYouLater` | True | Expands an initialism. |
| `TenantTenet` | True | A collection of linters that can be run as one. |
| `TendTo` | True | A collection of linters that can be run as one. |
| `Tenfold` | True | Looks for incorrect spacing inside the closed compound `tenfold`. |
| `ThanksALot` | True | Corrects the missing article in `thanks lot`, forming `thanks a lot`. |
| `ThatChallenged` | True | Corrects `the challenged` to `that challenged` for proper relative clause usage. |
| `ThatThan` | True | Corrects the typo `that` to `than` in comparisons. |
| `ThatThis` | True | Fixes `the this` to the correct phrase `that this`. |
| `ThatWhich` | True | Repeating the word "that" is often redundant. The phrase `that which` is easier to read. |
| `The` | True | Fixes especially common misspellings of the word `the` |
| `TheAllThe` | True | Fixes redundant double `the` in `the all the` |
| `TheAnother` | True | Corrects `the another`. |
| `TheDifferenceBetween` | True | Corrects `the different(s) between to `the difference between`. |
| `TheEntiretyOf` | True | Corrects `the entire of` to `the entirety of`. |
| `TheHowWhy` | True | Removes the extra `the` from expressions like `the how`, skipping `how to` and `who's who`. |
| `TheLastDays` | True | Corrects `in the last days` to `in the last few days` and related errors. |
| `TheMy` | True | Flags the definite article used together with a possessive. |
| `ThePointFor` | True | Corrects `the point for` to `the point of` |
| `TheProperNounPossessive` | True | Checks for redundant `the` before possessive proper noun such as `The London's population`. |
| `TheTheToThatThe` | True | Corrects `the the` to `that the` or to a single `the`. |
| `TheWhetherWeather` | True | Fixes the common mix-up where `whether` is used after `the` when the weather noun is intended. |
| `TheirToThere` | True | Corrects `their` when the intended meaning is `there`. |
| `TheirToTheyre` | True | Corrects `their` when the intended meaning is `they're`. |
| `Themself` | True | Corrects `their self` and `their selves` to `themself` and `themselves`. |
| `ThenThan` | True | Corrects mixing up `then` and `than`. |
| `There` | True | Looks for incorrect spacing inside the closed compound `there`. |
| `ThereAfterCompound` | True | Normalizes split `there after` to the closed form in adverbial contexts. |
| `ThereIsAgreement` | True | Checks for `is there` and its variants agreeing with singular vs plural subjects |
| `ThereMissingIsClause` | True | Inserts `is` in common subordinate clauses like `if there a ...` where the copula is omitted. |
| `ThereOwn` | True | Corrects `there own`, `they're own`, and `theyre own` to `their own`. |
| `ThereToTheir` | True | Corrects `there` when the intended meaning is `their`. |
| `Therefore` | True | Looks for incorrect spacing inside the closed compound `therefore`. |
| `Therein` | True | Flags occurrences of `there in` or `there-in` that should be the closed compound word `therein`. |
| `Theres` | True | Replaces the mistaken possessive `their's` before a determiner with the contraction `there's`. |
| `Thereupon` | True | Looks for incorrect spacing inside the closed compound `thereupon`. |
| `ThesesThese` | True | Corrects the common misspelling of `these` as `theses`. |
| `TheyToThem` | True | Converts `they` to `them` whenever the pronoun serves as an object after common prepositions or actions that take direct objects. |
| `TheyreConfusions` | True | Detects apostrophe and locative edge cases that are awkward to model with standard contraction checks. |
| `TheyreToTheir` | True | Corrects `they're` when the intended meaning is `their`. |
| `ThieveNoun` | True | Fixes accidental `thieve` in noun phrases where singular `thief` is intended. |
| `ThingThink` | True | Corrects the typo `thing` when it should be `think`. |
| `ThinkKnowOff` | True | Fixes the common preposition mix-up after verbs like `know` and `think` in phrases such as `know off` and `thought off` when a following token indicates the intended meaning is `of`. |
| `ThisTypeOfThing` | True | Checks that the parts of `this/these type(s) of thing(s)` agree in grammatical number |
| `ThoughThought` | True | Corrects `though` when it's a typo for `thought`. |
| `ThoughtProcess` | True | Changes `though process` to `thought process`. |
| `ThreatenVerb` | True | Normalize `threat` to `threaten` when it is used after modals (or their contractions) because the noun form is being mistaken for a verb. |
| `ThriveOn` | True | Corrects `thrive off` and `thrive off of` to `thrive on`. |
| `ThrowAway` | True | Finds the typo `through away` and suggests `throw away` or `threw away` instead. |
| `ThrowBabyWithBathwater` | True | Corrects wrong or nonstandard variants of the idiom 'to throw the baby out with the bathwater' |
| `ThrowRubbish` | True | Checks for throwing rubbish rather than throwing it away. |
| `TickingTimeClock` | True | Corrects `ticking time clock` to `ticking time bomb` for idiomatic urgency or `ticking clock` otherwise. |
| `TillDate` | True | Corrects the Indian English `till date` to `to date` when Indian English is not the selected dialect. |
| `ToAdverb` | True | Flags duplicated `to` around certain adverbs (e.g. `to never to`) and offers fixes that keep only one `to`. |
| `ToBackOut` | True | Treats `to backout` as a mistyped infinitive and prefers the two-word verb. |
| `ToBeFair` | True | Expands an initialism. |
| `ToBeHonest` | True | Expands an initialism. |
| `ToDoHyphen` | True | Ensures `to-do` is correctly hyphenated. |
| `ToGreatLengths` | True | Corrects `through great lengths` to `to great lengths`. |
| `ToLoseTooLoose` | True | Corrects mixing up `to` with `too` and `lose` with `loose`. |
| `ToNoAvail` | True | A collection of linters that can be run as one. |
| `ToSomeDegree` | True | Corrects `in some degree` to `to some degree`, meaning to a certain extent. |
| `ToTheMannerBorn` | True | Corrects `to the manor born` to `to the manner born`, ensuring the intended meaning of being naturally suited to a way of life. |
| `ToTo` | True | Corrects the typo `to to` by either removing the duplication or changing it to `to do`. |
| `ToTooIdioms` | True | Corrects `to` used instead of `too`. |
| `ToTwoToo` | True | Corrects homophone confusion between `to` and `too`. |
| `ToWorryAbout` | True | Fixes incorrect use of `to worried about`. |
| `TomorrowPossessiveModifier` | True | Flags `tomorrows` in attributive contexts and suggests the possessive form instead. |
| `TongueInCheek` | True | Corrects the idiom when `and` replaces the needed preposition. |
| `TooTo` | True | Corrects `too` used instead of `to`. |
| `ToteTout` | True | Flags places where `tote` and `tout` may be confused. |
| `Touristic` | True | Suggests replacing the uncommon word `touristic` with `tourist`, `tourism`, and/or `touristy`. |
| `Towards` | True | Removes redundant `to` before `towards`. |
| `Tradeoff` | True | Looks for incorrect spacing inside the closed compound `tradeoff`. |
| `TransposedSpace` | True | Looks for a space one character too early or too late between words. |
| `TrialAndError` | True | Corrects `trail` to `trial` in `trial and error`. |
| `TrueToWord` | True | Normalizes phrasing around `true to <possessive>` so it follows the conventional `true to one's word`. |
| `TrustIn` | True | Detects the wrong preposition in `have trust for`. |
| `TruthToTheFact` | True | Flags the redundant phrase `truth to the fact`. |
| `TryOnesHandAt` | True | Corrects `try one's hands at` to `try one's hand at`. |
| `TryOnesLuck` | True | Corrects `try out one’s luck` to `try one’s luck` |
| `TuffEnough` | True | The adjective `tough` pairs with words like `enough` or `like`, so correct the common typo `tuff` in those constructions. |
| `TumblrNames` | True | Ensure proper capitalization of Tumblr-related terms. |
| `TurnItOff` | True | Fixes the mistake in the phrase `turn it off`. |
| `USUniversities` | True | Ensure proper capitalization of major universities in the United States. |
| `UnclosedQuotes` | True | Quotation marks should always be closed. Unpaired quotation marks are a hallmark of sloppy work. |
| `UnderThreat` | True | Corrects `in threat` to `under threat` for standard idiomatic usage. |
| `Underclock` | True | Looks for incorrect spacing inside the closed compound `underclock`. |
| `UnderneathOf` | True | Corrects `underneath of`. |
| `UnitedOrganizations` | True | When referring to national or international organizations, make sure to treat them as a proper noun. |
| `Unless` | True | Corrects `unless if`. |
| `UpdatePlaceNames` | True | This rule looks for deprecated place names and offers to update them. |
| `Upset` | True | Looks for incorrect spacing inside the closed compound `upset`. |
| `Upward` | True | Looks for incorrect spacing inside the closed compound `upward`. |
| `UseEllipsisCharacter` | True | Replaces three-period ellipses with the single Unicode ellipsis character. |
| `UseTitleCase` | True | Prompts you to use title case in relevant headings. |
| `UseToUsedTo` | True | Corrects `use to` to `used to` when meaning accustomed to (after forms of `be` or `get`). |
| `VerbToAdjective` | True | Looks for article-led gerund noun phrases like `a fully accounting of`, where an adjective is more likely than an adverb. |
| `VerseAsVerb` | True | Corrects the nonstandard use of `verse` as a verb (from `versus`) to standard alternatives. |
| `VeryKnown` | True | `very well-known` (or `well-known`) is the standard way to describe something widely recognized, so we flag the uncommon `very known` word pair. |
| `VeryLess` | True | Corrects adverbs of degree (`too`, `very`, etc.) used with `less` mostly in the writing of native German speakers.` |
| `VeryMuchSo` | True | `Very much` already intensifies the verb, so the trailing `so` is redundant. `Very much so` only reads correctly when the `so` refers back to something earlier, as in the reply `Yes, very much so.` |
| `VeryUnique` | True | Flags phrases like `very unique`, `pretty unique`, etc., and suggests using `unique` alone or a more precise adjective such as `special`, `rare`, or `unusual`. |
| `ViceVersa` | True | Recommends writing ‘vice versa’ without hyphens. |
| `ViciousCircle` | True | Corrects and standardizes common errors and variants of `vicious/virtuous circle`. |
| `ViciousCircleOrCycle` | False | Corrects common errors in `vicious/virtuous circle/cycle`. |
| `ViciousCycle` | False | Corrects and standardizes common errors and variants of `vicious/virtuous cycle`. |
| `WaistWaste` | True | Corrects misspelling `waste` (careless use) as `waist` (body part). |
| `Wanna` | True | Corrects the informal contractions `gonna`, `gotta`, and `wanna` to their full forms. |
| `WantBe` | True | Detects incorrect usage of `want be` and suggests `won't be` or `want to be` based on context. |
| `WasAloud` | True | Ensures `was aloud` and `were aloud` are corrected to `was allowed` or `were allowed` when referring to permission. |
| `WasComprisedOf` | True | Rewrites the fixed phrase `was comprised of` to a more widely accepted form. |
| `WaveFunction` | True | Identifies the mistake of merging `wave` and `function` into one word. In quantum mechanics, a `wave function` (written as two words) describes the mathematical function that represents the quantum state of a particle or system. Correct usage is crucial for clear and accurate scientific communication. |
| `WayTooAdjective` | True | Replaces the preposition `to` with the adverb `too` after `way` when followed by an adjective (e.g. `way too fast`) |
| `WayWithWhich` | True | Suggests removing the redundant `with which` from `way with which`. |
| `WeSeeUs` | True | Looks for the common Germanic phrase `we see us` and suggests `we see each other` as a replacement. |
| `WebScraping` | True | Corrects `scrapping` the web to `scraping`. |
| `WellBeing` | True | Ensures `well-being` is correctly hyphenated. |
| `WellEducated` | True | Replaces `good-educated` with the accepted compound `well-educated`. |
| `WellKept` | True | Flags `highly-kept` and recommends `well-kept` as an alternative. |
| `WentAheadAndAgreement` | True | Checks for `went ahead and` followed by a present tense verb, which should be past tense. |
| `WereWhere` | True | Detects mixing up `were` and `where`. |
| `Whatsoever` | True | Looks for incorrect spacing inside the closed compound `whatsoever`. |
| `Whereas` | True | The Whereas rule is designed to identify instances where the phrase `where as` is used in text and suggests replacing it with the single word `whereas`. |
| `Whereupon` | True | Looks for incorrect spacing inside the closed compound `whereupon`. |
| `WhetYourAppetite` | True | Ensures `whet your appetite` is used correctly, distinguishing it from the incorrect `wet` variation. |
| `WholeEntire` | True | Corrects the redundancy in `whole entire` to `whole` or `entire`. |
| `WhomSubjectOfVerb` | True | Detects whom and its variants used as the subject of a verb instead of who. |
| `WidelyAccepted` | True | Flags `wide accepted`, `wide acceptable`, or `wide used` and recommends switching `wide` to the adverb `widely`. |
| `Widespread` | True | Looks for incorrect spacing inside the closed compound `widespread`. |
| `WillContain` | True | Incorrect verb form: `will` should be followed by the base form `contain`. |
| `WillGonna` | True | Corrects the redundant `will gonna` and `will going to` to `will`. |
| `WillNonLemma` | True | Flags wrong verb forms after `will` or `shall` |
| `WinPrize` | True | Catches the mix-up between `price`/`prise` and `prize` after the verb `win`. |
| `WishCould` | True | Checks for `can` being used after `wish` when it should be `could`. |
| `WithOpenArms` | True | Corrects wrong variants of the idiom `welcome/greet with open arms`. |
| `Without` | True | Looks for incorrect spacing inside the closed compound `without`. |
| `WithoutOut` | True | When writers accidentally type `without out`, Harper can collapse the two words back into the single preposition. |
| `WokVerbTypo` | True | Flags likely typo cases where `wok` appears where the verb `work` is expected. |
| `WordPressDotcom` | True | Ensures correct capitalization of WordPress.com. This rule verifies that the official stylization of WordPress.com is used when referring to the hosting provider. |
| `Worldwide` | True | Looks for incorrect spacing inside the closed compound `worldwide`. |
| `WorseOrWorst` | True | Corrects `worse` and `worst` used in contexts where the other belongs. |
| `WorstCaseScenario` | True | Corrects `worst-case scenario` when the hyphen is missing or `worse` is used instead of `worst`. |
| `WorthToDo` | True | Corrects `worth to` + a verb to `worth` + the gerund of the verb. |
| `Worthwhile` | True | Looks for incorrect spacing inside the closed compound `worthwhile`. |
| `WouldNeverHave` | True | Corrects `would/could have never` to `never would/could have`. |
| `WreakHavoc` | True | Corrects the eggcorn `wreck havoc` to `wreak havoc`, which is the proper term for causing chaos or destruction. |
| `WrongApostrophe` | True | Corrects semicolons, acute accents, and backticks typed instead of apostrophes. |
| `WrongNegative` | True | If an unknown word looks like it might be a negative word, suggests correct words that are in the dictionary. |
| `WroteToRote` | True | Corrects `by wrote` to `by rote`. |
| `WroughtIron` | True | `Wrought iron` is low-carbon, malleable iron used for decorative work; variants like `rod iron` or `rot iron` are phonetic misspellings that may confuse readers. |
| `YeaToYeah` | True | Corrects `yea` to `yeah`. |
| `YehToYeah` | True | Corrects `yeh` to `yeah`. |
| `YourOutClauseAgreement` | True | Corrects `your` when it appears where a subject-plus-verb contraction is intended before `out` and a following preposition. |
| `YourPredicateAdjective` | True | Catches cases where a predicate adjective follows `your`, `yr`, `ur`, or `ya` and suggests the proper contraction so the sentence states how someone is feeling or behaving. |
| `Yourself` | True | Looks for incorrect spacing inside the closed compound `yourself`, while skipping hyphenated `self-...` compounds. |
