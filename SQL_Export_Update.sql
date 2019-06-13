-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 13, 2019 at 11:13 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `article_id` int(11) NOT NULL,
  `article_image` varchar(64) NOT NULL,
  `fk_category_id` int(11) NOT NULL,
  `fk_author_id` int(11) NOT NULL,
  `article_text` varchar(3000) NOT NULL,
  `article_tags` varchar(300) NOT NULL,
  `article_title` varchar(128) NOT NULL,
  `article_postdate` datetime NOT NULL,
  `article_likes` int(11) NOT NULL,
  `article_summary` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`article_id`, `article_image`, `fk_category_id`, `fk_author_id`, `article_text`, `article_tags`, `article_title`, `article_postdate`, `article_likes`, `article_summary`) VALUES
(1, 'politics.png', 1, 1, 'Labour has held on to the marginal seat of Peterborough, overturning predictions that the contest could deliver a first byelection victory for Nigel Farage’s Brexit party.\r\n\r\nThe victorious Labour candidate, Lisa Forbes, told her supporters after the count early on Friday: “Tonight’s result is significant because it shows that the politics of division will never win.”\r\n\r\nForbes won 10,484 votes, beating the Brexit party’s Mike Greene, who took 9,801 votes, a margin of 683. The Conservatives were beaten into third place with 7,243 votes. Turnout was 48%.\r\n\r\nFarage left the count through a backdoor minutes before the result was announced.', 'Politics, Brexit, Interview', 'Peterborough byelection result: Labour scrapes past Brexit party to hold seat', '2019-06-20 09:12:00', 282, 'Labour’s Lisa Forbes says result shows ‘the politics of division will never win’'),
(2, 'politics2.jpg', 1, 1, 'ATLANTA — After two days of intense criticism, Joseph R. Biden Jr. reversed himself Thursday night on one of the issues most important to Democratic voters, saying he no longer supports a measure that bans federal funding for most abortions.\r\n\r\nAs recently as Wednesday, Mr. Biden’s campaign had said he supported the measure, known as the Hyde Amendment. His decision to change positions illustrates the intense pressure he faces as the presumed front-runner for the Democratic nomination for president.\r\n\r\n[What is the Hyde Amendment? Here’s a look at what it does, and why the politics have shifted.]\r\n\r\nHis turnaround was abrupt, particularly because Mr. Biden has grappled for decades with his views on abortion rights. While he has said he supports Roe v. Wade, the Supreme Court ruling that made abortion legal nationwide, he has opposed members of his own party on a number of abortion measures, ascribing his reluctance to his Roman Catholic faith.\r\n\r\nIn a speech at a gala hosted by the Democratic National Committee in Atlanta on Thursday night, Mr. Biden credited the change, in part, to recent efforts by Republicans to roll back abortion access in states including Georgia and across the country — especially in the South — calling them “extreme laws.”', 'Politics, Interview, Abortion', 'Joe Biden Denounces Hyde Amendment, Reversing His Position', '2019-06-01 08:15:00', 0, 'Joseph R. Biden Jr. has publicly grappled with his positions on abortion rights for decades.'),
(3, 'news.jpg', 2, 2, 'A plane carrying the 43-year-old retired Boston Red Sox star, affectionately known as “Big Papi” landed after a flight from the Dominican. Ortiz had been in a stable condition in intensive care at a Santo Domingo hospital after doctors removed his gallbladder and part of his intestine, according to his spokesman, Leo Lopez.\r\n\r\nHe said Ortiz’s liver was also damaged in the shooting on Sunday night.\r\n\r\nOrtiz is one of the most beloved figures in sports history in the Dominican Republic and Boston. He led the Red Sox to three World Series championships, was a 10-time All-Star and hit 541 home runs.\r\n\r\nDozens of fans crowded around the hospital, causing a traffic jam. In the US, fans prayed for his recovery and wished him well, with New England Patriots star Julian Edelman assuring him on Instagram: “Papi, all of New England has your back.”', 'News, Interview, Crime', 'Baseball star back in boston after Dominican Republic shooting', '2019-06-12 07:37:00', 824, 'Baseball player David Ortiz is back in Boston a day after he was ambushed by a gunman at a bar in his native Dominican Republic.'),
(4, 'news2.jpg', 2, 2, 'PARIS (AP) — French yellow vest protesters set life-threatening fires, smashed up luxury stores in Paris and clashed with police Saturday in the 18th straight weekend of demonstrations against President Emmanuel Macron. Large plumes of smoke rose above the rioting on Paris’ landmark Champs-Elysees avenue, and a mother and her child were just barely saved from a building blaze.\r\n\r\nCobblestones flew in the air and smoke from fires set by protesters mingled with clouds of tear gas sprayed by police, as tensions continued for hours along the Champs-Elysees. By dusk, as the demonstrators had dispersed, the famed avenue was a blackened expanse.The resurgent violence comes at a watershed moment for a movement, which had been fizzling in recent weeks, and at the end of a two-month-long national debate called by Macron that protesters say failed to answer their demands for economic justice.\r\n\r\nPolice appeared to be caught off guard by the speed and severity of Saturday’s unrest. French riot police tried to contain the demonstrators with repeated volleys of tear gas and water cannon, with limited success.', 'News, France, Riot', 'PARIS (AP) — French yellow vest', '2019-06-10 15:26:00', 721, 'French yellow vest protesters set life-threatening fires, smashed up luxury stores in Paris and clashed with police Saturday in the ...'),
(5, 'business.jpg', 3, 4, 'Sooner or later, the fairy dust evaporates, as Neil Woodford found out this week when he was forced to suspend his flagship fund.\r\n\r\nA stockpicker, or fund manager, analyses the potential of different shares to see if they will make a good investment.\r\n\r\nInvestors, like big institutions such as pension funds, put money into funds run by these stockpickers, hoping the savings will grow.\r\n\r\nWhat makes Mr Woodford\'s travails so startling is that he was one of a very small group of fund managers able to attract investors on the strength of his name alone.\r\n\r\nPowered by glittering success in the past, Mr Woodford\'s troubles show that even these Pied Piper-like figures have their bad years.\r\n\r\n\"No one would expect a fund manager to keep beating the index or their rivals every year,\" said Russ Mould, investment director at AJ Bell. \"Each has a different style and angle which might not work in some years.\"When it comes to stockpickers, none is bigger than the big cheese himself, Warren Buffett.\r\n\r\nHe is chairman and chief executive of Berkshire Hathaway, but devotees call him the Oracle (sometimes Sage) of Omaha, a reference to the Nebraska city where the company is based.', 'Business, Stock, Investment', 'Stockpicking: What goes up may go down', '2019-06-03 07:43:00', 194, 'If what goes up, must come down, it stands to reason that a professional stockpicker can\'t get it right all the time.'),
(6, 'business2.jpg', 3, 4, 'As a senior executive at the software company, which has eight offices around Europe, he fields around 140 emails a day.\r\n\r\n\"You have to pick and choose what you think is going to be relevant to yourself... you can get cc\'ed into so many emails that are nothing to do with yourself whatsoever,\" he says.\r\n\r\nAnd there\'s the key problem with email. The message that might contain the single most important thing you need to know all year, could well disappear into the landfill that is your inbox.\"We cc in everybody rather than just the one or two people we should be interacting with. Line managers should never send emails outside of office hours to their subordinates unless it\'s absolutely essential.\r\n\r\n\"There\'s no point in sending someone an email on a Friday night saying you don\'t have to deal with this until Monday, because people will then worry about it and do it that weekend.\"\r\n\r\nBut he is not saying that email should be eliminated altogether.\r\n\r\n\"It\'s a great way to keep in touch with people, particularly who are remote. It\'s a great way to send data, to send information. By itself it\'s fine - it\'s the way people are using it is the problem,\" says Prof Cooper.', 'Business, Company, Email', 'How to cope with email overload', '2019-06-07 11:30:00', 309, 'Andrew Crosby has 7,000 emails in his inbox. To some that might not sound like many, but he\'s only been at Relaxing Gaming for a year, so there\'s not been much time for the inbox to get out of control.'),
(7, 'technology2.jpg', 4, 3, 'In a draft letter to Cabinet Secretary Mark Sedwill, seen by the BBC, operators will urge the government to clarify its position over Huawei.\r\n\r\nThe letter asks for an urgent meeting between industry leaders and the government to discuss their concerns.\r\n\r\nOperators say they can\'t invest in infrastructure while uncertainty over the use of Chinese technology persists.\r\n\r\nThe companies are planning to send the letter to government as soon as this week. They are concerned at the government\'s inability to decide whether Huawei technology will be approved for use in new 5G networks.\r\n\r\nA government spokesperson said: \"The security and resilience of the UK\'s telecoms networks is of paramount importance. We have robust procedures in place to manage risks to national security and are committed to the highest possible security standards.\r\n\r\n\"The Telecoms Supply Chain Review will be announced in due course. We have been clear throughout the process that all network operators will need to comply with the government\'s decision.\"\r\n\r\nHuawei is the world\'s leading supplier of next generation connectivity equipment, but it has faced a backlash from the US.\r\n\r\nThe US government has already banned the use of Huawei technology after citing concerns that the company may present a security threat by allowing the Chinese government a way to snoop on critical infrastructure.\r\n\r\nThe US has also threatened to limit intelligence co-operation with any country that allows Huawei equipment to be used in its own networks.\r\n\r\nEarlier this year there were unconfirmed reports that the government was considering allowing Huawei equipment into the periphery of new mobile networks, but not into the \"core\" of systems that could end up managing crucial services such as hospitals, police forces and the energy network.', 'Technology, Mobile, Huawei', 'UK phone firms demand clarity over Huawei', '2019-06-13 17:20:00', 538, 'The UK risks losing its position as a world leader in mobile connectivity, Britain\'s mobile operators are warning'),
(8, 'technology.jpg', 4, 3, 'Google co-founders Larry Page and Sergey Brin have long been the stars of the search giant\'s weekly \"TGIF\" town hall meetings. But for the past six months, the pair had been no-shows, an absence that coincided with Google controversies over antitrust concerns, work in China and military contracts.\r\n\r\nThat changed late last month when they attended the company\'s most recent TGIF meeting on May 30, according to people who watched the gathering. Google didn\'t hold a TGIF or \"Thank God It\'s Friday,\" meeting last week. The gatherings are held on Thursday in the US so that employees in Google offices around the world can participate. \r\n\r\nAt the May meeting, Page and Brin talked about the company\'s cloud strategy, according to the people, who asked not to be named. Google confirmed that Brin and Page attended the meeting, but declined to provide details about the pair\'s comments. It\'s unclear why the co-founders decided to attend that particular meeting, but their presence ended an unusually long stretch of absences. \r\n\r\nAfter years of Page and Brin being core to TGIF, it\'s been \"jarring\" to have them missing for so long, one of the people said. The disappearing act drew criticism from those who see Page\'s and Brin\'s absence as dodging accountability during the most tumultuous period in the company\'s 20-year history. When Page and Pichai were invited to a high-profile Senate hearing last year, both declined, resulting in an empty chair with a name tag that read \"Google\" next to Facebook COO Sheryl Sandberg and Twitter CEO Jack Dorsey. In April, BuzzFeed News reported on Page\'s and Brin\'s absence from TGIF meetings. ', 'technology, Google, Meet', 'Elusive Google co-founders make rare appearance at town hall meeting', '2019-06-09 04:26:00', 916, 'Larry Page and Sergey Brin show up at their first \"TGIF\" all-hands meeting in six months.'),
(9, 'health.jpg', 5, 6, 'Trying to get an energy boost on a hot summer day could be more dangerous than it seems.\r\n\r\nIn a new study, researchers concluded that supplements such as energy drinks are tied to an increased risk of hospitalization, death, and other severe medical events for young people.\r\n\r\nThese negative consequences linked to supplements were “very concerning,” said Flora Or, ScD, a researcher at the Harvard T.H. Chan School of Public Health in Massachusetts and the study’s lead author.\r\n\r\n“Our results indicate that dietary supplements sold for weight loss, muscle building, and energy can be extremely dangerous and are linked with severe medical injury and, in some cases, death in young people who use these products,” Or told Healthline.\r\n\r\nThe study didn’t break out types of vitamins into particular categories. It’s possible that could complicate the findings, as the dangers of vitamins lie primarily with one: getting too much vitamin D.\r\n\r\nBut the gist of the new findings echo previous studies, which have also found that supplements can be dangerous in some cases — and that those risks may be increasing.\r\n\r\nA 2017 study, for instance, found that calls to poison control centers stemming from supplements increased by about 50 percent from 2005 to 2012.\r\n\r\nThe study reported 275,000 supplement exposures between 2000 and 2012, with about 4 percent resulting in serious medical outcomes, which the National Poison Data System defines as ranging from requiring treatment but not life-threatening to death.\r\n\r\nThat would mean more than 12,000 people requiring treatment due to supplement use over those dozen years.\r\n\r\nOne of the supplements that the study found to be “associated with considerable toxicity” was energy products.', 'Health, Study, Energy', 'Why You Might Want to Restrict Energy Drinks for Children, Teens', '2019-06-08 12:22:00', 1578, 'Researchers say some dietary supplements and vitamins can cause health issues for younger people.'),
(10, 'health2.jpg', 5, 6, 'The chickenpox vaccine has proven its effectiveness in preventing the itchy virus.\r\n\r\nNew research shows the vaccine is also effective when it comes to preventing shingles, a cousin of the virus.\r\n\r\nThe findings were published today by the American Academy of Pediatrics. They show that children who were vaccinated against chickenpox (varicella) had a 78 percent lower risk of developing shingles than those who weren’t vaccinated.\r\n\r\nExperts say it’s a positive sign and a reminder of the importance of getting vaccinated.Many adults remember the experience of getting chickenpox as children. While it’s a temporary, uncomfortable ailment for many people, the virus can carry some unpleasant complications.\r\n\r\n“Chickenpox was once very common in the United States,” Dr. Michael Grosso, chief medical officer and chair of pediatrics at Northwell Health Huntington Hospital in New York, told Healthline.\r\n\r\nGrosso says that in the early 1990s, an average of 4 million people got chickenpox, between 10,000 and 13,000 were hospitalized, and 100 to 150 died each year.\r\n\r\nThe germ that causes chickenpox is known as herpes varicella-zoster virus (HVZ).\r\n\r\nGrosso says that an HVZ infection can bring on pneumonia, hepatitis, and nervous system issues.\r\n\r\nBecause HVZ exists in the body in a dormant state after a bout with chickenpox, it can reactivate at any time. When this happens, shingles can result.\r\n\r\nIn 1995, a vaccineTrusted Source with the brand name Varivax first became available, and chickenpox rates plunged dramatically.\r\n\r\n“Cases of chickenpox and deaths both declined by more than 90 percent after its introduction in the United States,” he said.', 'Health, Research, Virus', 'Chickenpox Vaccine Is Effective Against Shingles, Too', '2019-06-06 14:10:00', 572, 'Researchers say the vaccine lowers the risk of children developing shingles before age 17.'),
(11, 'travel2.jpg', 6, 7, 'British holidaymakers are able to return to Sri Lanka after the Foreign Office (FCO) lifted its restrictions on travel to the country.\r\n\r\nThe island in the Indian Ocean had been out of bounds in the wake of the Easter Sunday bombings seven weeks ago that killed nearly 300 people. But today the FCO said the country was safe to return to.\r\n\r\nIt warned that terrorists are still “very likely to try to carry out attacks” there and said visitors should “continue to remain vigilant.\'\'\r\n\r\nThe news was greeted with relief and joy from the country’s cheerleaders. “Tourism is a big part of their economy and the FCO update is only good news for the Sri Lankan people,” said Kerry Golds, managing director of tour operator...', 'Travel, Vacation, Sri Lanka', 'Sri Lanka travel advice: Foreign Office declares country safe again', '2019-06-05 17:28:00', 571, 'Sri Lanka travel advice: Foreign Office declares country safe again'),
(12, 'travel.jpg', 6, 7, 'Visitors to Venice could be fined up to €500 (£440) for sitting in undesignated spots, after the mayor suggested a new ban as part of wider efforts to crack down on undesirable tourist behaviour.\r\n\r\nThe idea, hatched by Mayor Luigi Brugnaro, will be voted on by the city council in October.\r\n\r\nIf the proposal is successful, tourists could be told to move on and fined from €50 to €500 for sitting somewhere they shouldn’t.It’s just the latest in a long list of measures designed to deal with the city’s overwhelming popularity as a tourist destination. In May, the mayor announced there would be no new takeaway outlets permitted to open in the city for the next three years; earlier the same month, city officials came under fire for segregating tourists and locals over the May Day weekend, one of the busiest times of the year. \r\n\r\nTurnstiles were erected with the aim of dispersing footfall, which local protesters tore down in frustration.\r\n\r\n“Venice is dying,” said protestor Marco Baravalle at the time. “The mayor putting in the turnstiles is demonstrating that he is giving up. He wants Venice to become a city with no inhabitants.”\r\n\r\nLast year the city announced all large cruise ships (over 55,000 tons) would be banned from docking by 2021.\r\n\r\nMeanwhile, Venice’s #EnjoyRespectVenezia campaign, which launched in the summer of 2017, dictates that tourists are welcome – but only if they play by the rules.', 'Travel, Vacation, Rules', 'Venice tourists could be fined €500 for sitting down', '2019-06-02 15:15:00', 1285, 'The controversial new rule will be voted on in October'),
(14, 'sports.jpg', 7, 5, 'For the first four games of the NBA finals, the question lingered: would Kevin Durant play? The two-time NBA finals MVP had not played since suffering a calf strain in Game 5 of the Western Conference semi-finals. The Warriors were dogged by questions about whether they could claim their third NBA championship in a row without him.\r\n\r\nThe short answer is that the Warriors are still capable of doing just that, after a thrilling 106-105 win over the Toronto Raptors in Game 5. Even as chants of “KD sucks” rained down from the seats of Scotiabank Arena, Durant showed what he is capable of, making his first two three-point attempts with ease. The Warriors followed Durant’s lead, going five-for-five from beyond the arc to start the game, making life difficult for the Raptors.\r\n\r\nBut it was not to last. Durant limped out of the game midway through the second-quarter and the Warriors general manager, Bob Myers, later confirmed the 30-year-old had sustained an achilles injury. If that is true, his series is almost certainly over. “I don’t believe there’s anybody to blame,” Myers, who had cleared Durant to play in the game, said. “But I understand this world. If there’s anybody to blame, blame me.” Myers said Durant will have an MRI on Tuesday to assess the extent of his injury.\r\n\r\nDurant, for his part, put on a brave face. “I’m hurting deep in the soul right now I can’t lie,” Durant wrote on Instagram after the game. “But seeing my brothers get this win was like taking a shot of tequila, I got a new life.”', 'Sports, Basket, NBA', '\r\nNBA finals: Warriors beat Raptors in Game 5 thriller to keep series alive', '2019-06-04 12:25:00', 3921, 'Raptors blow late lead as Warriors secure vital win'),
(15, 'sports2.jpg', 7, 5, 'The Kansas City Star reported Friday that Steve Howe, the Johnson County district attorney, said a criminal investigation is inactive but added, \"As in any case, if we receive additional evidence we re-evaluate.\"\r\n\r\nIn the meantime, Hill\'s status with the Chiefs remains uncertain.\r\n\r\nIn April, Howe\'s office declined to press charges against Hill or his fiancé, Crystal Espinal, after an incident in which their young son suffered a broken arm. He said he believed someone had hurt the child but could not prove it.\r\n\r\nHowe told The Star that those remarks \"still hold true\".\r\n\r\nTwo days after Howe\'s April news conference, an audiotape emerged in which Espinal accuses Hill of breaking the boy\'s arm, and he threatens her in return.\r\n\r\nThe Chiefs banned Hill, 25, from participating in team activities but did not cut ties with him. At the time, head coach Andy Reid said the investigation had been reopened.\r\n\r\n\"It\'s my understanding the criminal investigation has been closed for quite some time now and obviously there\'s been some misinformation about that, but it is closed,\" Hill\'s attorney, Trey Pettlon, told The Star.\r\n\r\nNFL officials have launched an investigation into Hill, but they have not yet interviewed him. League spokesman Brian McCarthy told The Star that the league is waiting for the Department for Children and Families to give its permission.', 'Sports, Interview, Crime', 'Kansas City Chiefs\' Tyreek Hill no longer being investigated by prosecutors', '2019-06-11 03:50:00', 1073, 'Prosecutors in Kansas City are no longer investigating Chiefs wide receiver Tyreek Hill on suspicion of child abuse.');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `author_id` int(11) NOT NULL,
  `author_image` varchar(64) NOT NULL,
  `author_name` varchar(64) NOT NULL,
  `author_title` varchar(32) NOT NULL,
  `author_description` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`author_id`, `author_image`, `author_name`, `author_title`, `author_description`) VALUES
(1, 't1.jpg', 'Rick Mofina', 'Extreme Author', 'Rick Mofina is a former journalist who has interviewed murderers on death row, flown over L.A. with the LAPD and patrolled with the Royal Canadian Mounted Police near the Arctic. He’s also reported from the Caribbean, Africa and Kuwait’s border with Iraq. His books have been published in nearly 30 c'),
(2, 't2.jpg', 'Glynnis Campbell', 'Children writer', 'GLYNNIS CAMPBELL is a USA Today bestselling author of swashbuckling action-adventure romance. She’s the wife of a rock star, and the mother of two young adults, but she’s also been a ballerina, a typographer, a film composer, a piano player, a singer in an all-girl rock band, and a voice in those vi'),
(3, 't4.jpg', 'John Scalzi', 'Science fiction writer', 'John Scalzi writes books, which, considering where you’re reading this, makes perfect sense. He’s best known for writing science fiction, including the New York Times bestseller Redshirts, which won the Hugo Award for Best Novel.'),
(4, 't3.jpg', 'Courtney Milan', 'Bestselling author', 'Courtney Milan is a New York Times and USA Today bestselling author of historical romance. Her books have received starred reviews in Publishers Weekly and Booklist.'),
(5, 't7.jpg', 'Laurelin Paige', 'Bestselling author', 'Laurelin Paige is the NY Times, Wall Street Journal, and USA Today Bestselling Author of the Fixed Trilogy. She’s a sucker for a good romance and gets giddy anytime there’s kissing, much to the embarrassment of her three daughters.'),
(6, 't5.jpg', 'Michael Siemsen', 'Novel author', 'Michael Siemsen is the USA Today Bestselling author of 6 novels, including The Dig, A Warm Place to Call Home (a demon’s story), and Exigency. He lives in Northern California with “the wife,” “the kids,” “the dog,” “that cat,” and he occasionally wears pants. His latest release, RETURN, is the third'),
(7, 't6.jpg', 'Claire Delacroix', 'Romance author', 'Bestselling author Claire Delacroix published her first romance novel — a medieval romance called THE ROMANCE OF THE ROSE — in 1993. Since then, she has published over fifty romance novels and numerous novellas, including time travel romances, contemporary romances and paranormal romances'),
(8, 't8.jpg', 'Adam Silvera', 'Sports author', 'Adam Silvera was born and raised in the Bronx, New York. He was a bookseller before shifting to children’s publishing where he worked at a literary development company, a creative writing website for teens, and as a book reviewer of children’s and young adult novels. He lives in New York City and is');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_title` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_title`) VALUES
(1, 'Politics'),
(2, 'Breaking News'),
(3, 'Business'),
(4, 'Technology'),
(5, 'Health'),
(6, 'Travel'),
(7, 'Sports');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `comment_postdate` datetime NOT NULL,
  `comment_text` varchar(1000) NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  `fk_article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_postdate`, `comment_text`, `fk_user_id`, `fk_article_id`) VALUES
(1, '2019-06-04 06:33:00', 'Don\'t steal, don\'t lie, don\'t cheat, don\'t sell drugs. The government hates competition!', 6, 5),
(2, '2019-06-05 10:07:00', 'Don\'t you find it Funny that after Monday(M) and Tuesday(T), the rest of the week says WTF?', 5, 6),
(3, '2019-06-06 08:34:00', 'Sorry, I can\'t hangout. My uncle\'s cousin\'s sister in law\'s best friend\'s insurance agent\'s roommate\'s pet goldfish died. Maybe next time.', 3, 9),
(4, '2019-06-07 18:11:00', 'Look! In the sky. It\'s a bird, it\'s a plane. Or is it a hellicopter? No actually I think it is a bird. Or maybe I\'m just seeing things. Who knows... After 10 shots of Whiskey things start to get a bit strange.', 4, 10),
(5, '2019-06-08 21:52:00', 'I like to say things twice, say things twice. It can get annoying though, annoying though.', 2, 3),
(6, '2019-06-13 17:16:00', 'I see you have something to talk about. Well, I have something to shout about. Infact something to sing about. But I\'ll just keep quiet and let you carry on.', 1, 4),
(7, '2019-06-16 08:53:00', 'I can drive 10 miles, walk 50 feet. Turn around and before I know it, I\'d be back home. Or would I? I\'m not sure but that\'s just how it is.', 6, 1),
(8, '2019-06-17 05:46:00', 'I told my wife the truth. I told her I was seeing a psychiatrist. Then she told me the truth: that she was seeing a psychiatrist, two plumbers, and a bartender.', 5, 2),
(9, '2019-06-17 19:10:00', 'From this day on I shall be known as Bob. For Bob is a good name and I am good. But if you want you can just call me Sally.', 3, 14),
(10, '2019-06-19 05:43:00', 'If you really wanted to do that, then why wouldn\'t you do that? Instead you do this. It makes no sense.', 4, 15),
(11, '2019-06-19 02:45:00', 'Look! In the sky. It\'s a bird, it\'s a plane. Or is it a hellicopter? No actually I think it is a bird. Or maybe I\'m just seeing things. Who knows... After 10 shots of Whiskey things start to get a bit strange.', 2, 8),
(12, '2019-06-20 18:18:00', 'Sometimes I wonder if I really can. But then I think to myself, maybe I can\'t. But if I could, that would be good. Maybe it\'s all a lie?', 1, 7),
(13, '2019-06-23 06:42:00', 'From this day on I shall be known as Bob. For Bob is a good name and I am good. But if you want you can just call me Sally.', 6, 12),
(14, '2019-06-25 05:39:00', 'Some people come into our lives and leave footprints on our hearts, while others come into our lives and make us wanna leave footprints on their face.', 5, 11);

-- --------------------------------------------------------

--
-- Table structure for table `contact_info`
--

CREATE TABLE `contact_info` (
  `contact_id` int(11) NOT NULL,
  `contact_mail` varchar(64) NOT NULL,
  `contact_phone` varchar(64) NOT NULL,
  `contact_adress` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_mail` varchar(64) NOT NULL,
  `user_name` varchar(64) NOT NULL,
  `user_password` varchar(64) NOT NULL,
  `user_image` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_mail`, `user_name`, `user_password`, `user_image`) VALUES
(1, 'michellea@gmail.com', 'Michelle A.', '123', 'u1.jpeg'),
(2, 'joeo@gmail.com', 'Joe O.', '123', 'u2.jpeg'),
(3, 'Blakeg@gmail.com', 'Blake G.', '123', 'u3.jpeg'),
(4, 'christins@gmail.com', 'Christin S.', '123', 'u4.jpeg'),
(5, 'antoniov@gmail.com', 'Antonio V.', '123', 'u5.jpeg'),
(6, 'Allies@gmail.com', 'Allie S.', '123', 'u6.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `video_id` int(11) NOT NULL,
  `video_title` varchar(64) NOT NULL,
  `video_link` varchar(64) NOT NULL,
  `video_picture` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `contact_info`
--
ALTER TABLE `contact_info`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`video_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `contact_info`
--
ALTER TABLE `contact_info`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `video_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
