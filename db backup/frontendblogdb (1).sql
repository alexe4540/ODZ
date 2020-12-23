-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 23 2020 г., 20:46
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `frontendblogdb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viewed` int(11) DEFAULT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `article`
--

INSERT INTO `article` (`id`, `title`, `description`, `date`, `image`, `tag`, `viewed`, `topic_id`, `user_id`) VALUES
(5, 'React v17.0 Release Candidate: No New Features', 'Gradual Upgrades\r\nFor the past seven years, React upgrades have been «all-or-nothing». Either you stay on an old version, or you upgrade your whole app to a new version. There was no in-between.\r\n\r\nThis has worked out so far, but we are running into the limits of the «all-or-nothing» upgrade strategy. Some API changes, for example, deprecating the legacy context API, are impossible to do in an automated way. Even though most apps written today don’t ever use them, we still support them in React. We have to choose between supporting them in React indefinitely or leaving some apps behind on an old version of React. Both of these options aren’t great.', '2020-12-12', '71f5a3e3c6e0a143c2067ff1de905d9e.png', 'IT', 21, 2, 0),
(6, 'What’s new in Angular 11 Highlights of the latest upgrade to the Google-developed web framework include stricter types, router performance improvements, and automatic font inlining', 'Available on GitHub, the Angular 11 production release follows a series of beta versions and release candidates. Other improvements in Angular 11 include:\r\n\r\nPerformance improvements and new APIs, with the parallel function making it easier to work with asynchronous actions in tests by enabling multiple asynchronous interactions with components in parallel.\r\nStricter types are added for DatePipe and number pipes, to catch misuses such as passing an Observable or an array.\r\nImproved reporting and logging.\r\nAn update to the Angular Language Service, providing a more powerful and more accurate experience.\r\nAn update to Hot Module Replacement (HMR) support leverages the CLI to allow enablement of HMR when starting an application with ng serve.\r\nExperimental Webpack 5 support offers a path to faster builds with persistent disk caching and smaller bundles thanks to CommonJS tree-shaking.\r\nTSLint has been deprecated, with project creators recommending migration to ESLint.\r\nFor the Angular compiler, keySpan would be added to the Variable node.\r\nThe router in Angular 11 would change the default value of relativeLinkResolution from “legacy” to “corrected.” The migration updates RouterModule configurations that use the default value to now specifically use “legacy” to prevent breakages during updating.\r\nIn a fix to the core, a Trusted Types policy is being introduced in the development mode. It allows arbitrary unsafe conversions to Trusted Types to support development features. Also, a module is being added to create a Trusted Types policy for use internally by Angular.\r\nNew initialNavigation options are being added to legacy functionality.\r\nFor code refactoring in the router, the type of parameter in navigateByUrl and createUrlTree is being adjusted to be more accurate.\r\nTo improve router performance, ngDevMode can be used to tree-shake error messages.\r\nFor service-worker, an UnrecoverableStateError notification is being added, fixing an issue in which a broken state would arise where only parts of an application would load properly. This situation has arisen when the browser has evicted eagerly cached assets from the cache that cannot be found on the server anymore.\r\nSupport is removed for the Microsoft IE 9 and IE 10 browsers as is IE mobile support.\r\nISO week-numbering year formats support is being added to formatDate.\r\nFor the compiler-cli, interfaces are being defined that can be used for TemplateTypeChecker. Performance improvements have been made to compiler-cli, also.\r\nFor the core, a migration is being added that finds all imports and calls to the deprecated async function @angular/core/testing and replaces them with waitforasync.\r\nnull is now included in the types of .parent.\r\nA multitude of bug fixes are planned, including an improvement to typing of common pipes and another fix to ensure TestBed is not instantiated before the override provder.\r\nTypeScript 3.9 support has been removed from the compiler. An upgrade to TypeScript 4.0 is advised.\r\nA roadmap published for Angular, listing features either in development or eyed for the future, cites capabilities including native trusted types and strict typing for forms. The Angular 10.1 point release, with compiler and router improvements, was released on September 8. Angular 10.0, with tool and ecosystem capabilities, arrived on June 24.', '2020-12-11', '74ea3439f1665dfd7506bb70598040fa.png', 'IT', 103, 3, 0),
(7, 'What’s New In Vue 3?', 'Vue 3 comes with a lot of interesting new features and changes to some of the existing ones that are aimed at making development with the framework a lot easier and maintainable. In this article, we’re going to take a look at some of these new features and how to get started with them. We’re also going be taking a look at some of the changes done to the existing features.\r\nWith the release of Vue 3, developers have to make the upgrade from Vue 2 as it comes with a handful of new features that are super helpful in building easy-to-read and maintainable components and improved ways to structure our application in Vue. We’re going to be taking a look at some of these features in this article.', '2020-12-10', '896b74a74dbe9867ad17a20d6e1874df.png', 'IT', 24, 4, 0),
(8, 'Новшества серверного рендеринга в React 16', 'Команда разработчиков React показала чёткую ориентацию на обратную совместимость. Поэтому, если ваш код выполняется в React 15 без сообщений о применении устаревших конструкций, он должен просто работать в React 16 без дополнительных усилий с вашей стороны. Код, приведённый выше, например, нормально работает и в React 15, и в React 16.\r\n\r\nЕсли случится так, что вы запустите своё приложение на React 16 и столкнётесь с ошибками, пожалуйста, сообщите о них! Это поможет команде разработчиков.\r\n\r\nМетод render() становится методом hydrate()\r\n\r\nНадо отметить, что переходя с React 15 на React 16, вы, возможно, столкнётесь со следующим предупреждением в браузере.\r\n\r\n\r\nОчередное полезное предупреждение React. Метод render() теперь называется hydrate()\r\n\r\nОказывается, в React 16 теперь есть два разных метода для рендеринга на клиентской стороне. Метод render() для ситуаций, когда рендеринг выполняются полностью на клиенте, и метод hydrate() для случаев, когда рендеринг на клиенте основан на результатах серверного рендеринга. Благодаря обратной совместимости новой версии React, render() будет работать и в том случае, если ему передать то, что пришло с сервера. Однако, эти вызовы следует заменить вызовами hydrate() для того, чтобы система перестала выдавать предупреждения, и для того, чтобы подготовить код к React 17. ', '2020-12-14', 'a2c27867ee7ae7c84b435babef37e426.png', 'React', 0, 2, 0),
(9, 'Добро пожаловать в Angular 11', 'Когда мы поделились Angular roadmap, одним из пунктов была операция Byelog, в рамках которой мы обязались приложить значительные инженерные усилия для сортировки проблем и PR до тех пор, пока у нас не будет чёткого понимания потребностей сообщества. Теперь мы можем сообщить, что первоначальная цель достигнута! Мы отсортировали все проблемы во всех трех монорепозиториях и продолжим эту работу по мере поступления сообщений о новых проблемах.\r\n\r\nЭто наше обязательство: в дальнейшем все новые проблемы, о которых сообщается, будут сортироваться в течение 2 недель. В процессе работы мы решили несколько популярных проблем с роутером и формами. А еще мы закрыли третью по популярности проблему!\r\n\r\nТеперь мы планируем следующие шаги в поддержку сообщества Angular. Мы продолжим упорядочивать и исправлять проблемы, а также работать над улучшением наших процессов принятия контрибьютов сообщества.\r\n', '2020-12-15', '215663fadb862b756bbab45d7ffcb368.jpg', 'Angular', 0, 3, 0),
(10, 'Удивительный Angular', 'Что дает вам Angular?\r\n\r\nAngular позволяет вам из \"коробки\" создавать большие и сложные по части бизнес-логики приложения. Angular было полным переосмыслением AngularJS, наверное, это было самое болезненное, но оно того стоило, сам фреймворк стал куда чище и гибче, более enterprise-подобным и с этой точки зрения обладает высокой масштабируемостью.\r\n\r\n\r\nКакие плюсы можно выделить:\r\n\r\n\r\nПоддержка Google, Microsoft;\r\nИнструменты разработчика (CLI);\r\nЕдиная структура проекта;\r\nTypeScript из \"коробки\" (вы можете писать строго типизированный код);\r\nРеактивное программирование с RxJS;\r\nЕдинственный фреймворк с Dependency Injection из \"коробки\";\r\nШаблоны, основанные на расширении HTML;\r\nКроссбраузерный Shadow DOM из коробки (либо его эмуляция);\r\nКроссбраузерная поддержка HTTP, WebSockets, Service Workers;\r\nНе нужно ничего дополнительно настраивать. Больше никаких оберток;\r\nБолее современный фреймворк, чем AngularJS (на уровне React, Vue);\r\nБольшое комьюнити.\r\n\r\nЧтобы оставаться честными, стоит выделить и минусы:\r\n\r\n\r\nВыше порог вхождения из-за Observable (RxJS) и Dependency Injeciton;\r\nЧтобы все работало хорошо и быстро нужно тратить время на дополнительные оптимизации (он не супер быстрый, по умолчанию, но быстрее AngularJS во много раз и с каждой новой версией становится все быстрее);\r\nНа самом деле, если вы планируете разрабатывать большое enterprise-приложение, то в этом случае у вас нет архитектуры для управления состоянием из \"коробки\" — нужно добавлять Mobx, Redux, CQRS/CQS или другой state-менеджер, чтобы потом не сломать себе мозг;\r\nAngular-Univesal имеет много подводных камней;\r\nДинамическое создание компонентов оказывается нетривиальной задачей.', '2020-12-16', 'e2b11250dd0ad68b17bd960c7aa063d7.jpg', 'Angular', 0, 3, 0),
(11, 'Просто Angular', 'Сообщество Angular точно поймет, о чем идет речь. Пользователям, чтобы перейти на вторую версию, пришлось переписать весь код. Хотя многие и полюбили Angular 1.x, но по объективным причинам были сделаны общие критические изменения, был написан новый API, новые шаблоны. Это было очевидно, и в конечном счете, Angular 2 был полностью переписан (хотя и существует способ менее болезненно мигрировать на новую версию).\r\n\r\n\r\nСейчас решено, что переход от версии 2 до версии 4, 5,… не должен быть таким болезненным, как это было с первой версией. Теперь код не будет полностью переписываться, наши изменения будут затрагивать только отдельные библиотеки, поставляемые сейчас с Angular 2, в свою очередь они будут соблюдены согласно SEMVER. Кроме того, постепенно мы будем включать Deprecation фазы (предупреждения консоли разработчика о том, что в следующих версиях данный функционал поддерживаться не будет), чтобы позволить разработчикам своевременно перейти на новый функционал.\r\n\r\n\r\nAngular Team использует собственный инструмент контроля изменений и обработки автоматических обновлений. Команда упорно работает над ним, и запланировала выпуск совместно с выходом Angular 5 в 2017 году.\r\n\r\n\r\nТеперь это просто «Angular»\r\n\r\nКак вы, возможно, уже догадались, термин «Angular 2» будет устаревшим с выходом 4-ой или 5-ой версии. Тем не менее, теперь следует начать называть его просто «Angular» без версии. Кроме того, вы должны начать избегать библиотек с GitHub/NPM с префиксом ng2- или angular2-. Существует единый ресурс с документацией — angular.io c официальным сообществом на GitHub.\r\n\r\n\r\nНовые правила версионирования\r\n\r\nС этого момента, старайтесь избегать использования номера версии, если он не является действительно необходимым для устранения неоднозначности.\r\n\r\n\r\nТри простых руководящих принципа:\r\n\r\n\r\nИспользуйте «Angular» по умолчанию (например, «Я angular-разработчик», «Это Angular-Meetup», «Angular сообщество быстро развивается»)\r\nИспользуйте «Angular 1», «Angular 2», «Angular 4», когда речь идет о специфичных вещах («Это эта функция X появилась в Angular 4», «Мы обновились с Angular 1 до 2», «Я предлагаю это изменение в Angular 5»)\r\nИспользуйте полную версию semver при сообщении об ошибке (например, «Эта проблема присутствует в Angular 2.3.1»)\r\n\r\nВся документация, даже для Angular 1.x, будут приведены в соответствие с этими правилами в ближайшие недели. Но если вы пишите что-то в своем блоге, пишите статьи, курсы, книги или всякий раз, старайтесь ориентироваться на специфическую версию Angular, дописывайте версию в заголовках публикации, якобы в данной статье используется Angular 2.3.1. Это помогает избежать путаницы для ваших читателей, особенно, когда вы пишете о конкретных API.\r\n\r\n', '2020-12-13', '3e588d223ac25b486066d598ea9a946c.jpg', 'Angular', 0, 3, 0),
(12, 'Введение в React', 'React элемент — минимальная единица React-приложения, объект описывающий то, что вы хотите увидеть на странице. Элементы React не изменяемые (immutable). То есть состояние элементов React не может быть изменено после создания.\r\n\r\nДля создания React элементов вам нужно использовать методы createElement() или\r\ncreateFactory(). Последний считается устаревшим и его использование не рекомендуется поэтому не будем останавливаться на нём. Если вы используете JSX, то вам не придётся вызывать данные методы.\r\n\r\nReact предоставляет методы для клонирования — cloneElement, проверки — isValidElement() и работой с структурой данных props.children это React.Children (семейство методов React.Children).\r\n\r\nДля отображения React элементов необходимо вызвать метод Render объекта ReactDom. После отображения (рендеринга) React элемента вы не можете изменить его потомков или атрибуты. Единственным решением является повторный вызов ReactDom.render(). На практике не советуется повторный вызов этого метода. Поэтому для интерактивных элементов вам необходимо использовать React компоненты.\r\n\r\nС помощью React элементов проще описать, как интерфейс выглядит в конкретный момент, чем-то как он изменяется с течением времени. К тому же такой подход позволяет избавиться от целого класса ошибок.', '2020-12-15', '4000ca0a3d06669c0893b9ecf235999b.png', 'React', 0, 2, 0),
(13, 'Новшества серверного рендеринга в React 16', 'Обратная совместимость React 16\r\n\r\nКоманда разработчиков React показала чёткую ориентацию на обратную совместимость. Поэтому, если ваш код выполняется в React 15 без сообщений о применении устаревших конструкций, он должен просто работать в React 16 без дополнительных усилий с вашей стороны. Код, приведённый выше, например, нормально работает и в React 15, и в React 16.\r\n\r\nЕсли случится так, что вы запустите своё приложение на React 16 и столкнётесь с ошибками, пожалуйста, сообщите о них! Это поможет команде разработчиков.', '2020-12-16', 'eec9a40d301459013d791067ebb4c411.png', 'React', 0, 2, 0),
(14, 'Изоморфные приложения. Взгляд в будущее с React', 'Изоморфные приложения. Взгляд в будущее с React\r\n\r\nВ разработке программного обеспечения все часто возвращается на круги своя. Так, например, на заре развития Интернета серверы подгружали контент сразу же на сторону клиента. В последнее же время, с разработкой современных веб-фреймворков, таких как AngularJS и Ember, мы видим тенденцию к обработке запросов на стороне клиента и использованию сервера только для API. Однако, это далеко не единственная тенденция. Сейчас происходит медленное возвращение или, скорее, слияние этих двух архитектур.', '2020-12-13', '05b754fc537b5db3b18edf93e5bd0a11.png', 'React', 0, 2, 0),
(15, 'Vue.js для сомневающихся. Все, что нужно знать', 'В данной статье речь пойдет о замечательном фронтенд фреймворке Vue.js. Как вы видите, статья называется «Vue.js для сомневающихся», и, если вы до сих пор не могли решиться попробовать Vue.js на практике, то надеюсь, что после прочтения вы все-таки на это решитесь.\r\n\r\nФреймворки разрабатываются для того, чтобы упростить нам жизнь и освободить от написания однотипного кода. Но, по мере того как кодовая база некоторых фреймворков сильно разрастается, они начинают привносить свою долю сложности в проект. Из-за этого при планировании разработки мы должны учитывать два фактора:\r\n\r\nсложность нашего приложения\r\nсложность фреймворка, который мы используем\r\n\r\nНемного абстрагируемся и назовём это внутренней сложностью (то есть сложностью, от которой мы не можем избавиться при разработке) и сложностью инструмента, с помощью которого мы достигаем той или иной цели. Естественно манипулировать мы можем только сложностью инструмента.\r\n\r\nИз вышесказанного, у нас получается два варианта выбора инструмента:\r\n\r\nВариант недостаточности. Когда инструмента недостаточно, чтобы перекрыть внутреннюю сложность. Функции, необходимые для реализации приложения, отсутствуют в фреймворке, и нам приходится вручную дорабатывать и добавлять необходимый инструментарий.\r\nВариант избыточности. Когда необходимый для приложения функционал перекрывается только небольшой частью инструмента. Остальная же часть инструментария висит мертвым грузом и только создает нам проблемы: ограничения при разработке, замедление загрузки приложения и т.п.\r\n\r\nТак что же делать? Возможно, буду немного Капитаном Очевидностью, но надо действовать по принципу: “Для каждой цели — свой инструмент”. При планировании нам необходимо искать золотую середину так, чтобы сложность (и, следовательно, функциональность) приложения были на одном уровне.', '2020-12-18', 'c9d2440b8e8a51c590aceb332ddce00f.jpg', 'Vue', 0, 4, 0),
(16, 'Всё, что нужно для начала работы с Vue.js', 'Сила Vue, на мой взгляд, заключается в том, насколько дружелюбно этот фреймворк относится к новичкам. Команда разработчиков Vue проделала замечательную работу, стремясь к тому, чтобы разработчики различной квалификации могли бы быстро приступить к продуктивной работе с фреймворком. Если вы знаете HTML, CSS и JavaScript — это означает, что вы буквально в шаге от того, чтобы разрабатывать довольно мощные приложений на Vue.\r\n\r\nЯ так же полагаю, что Vue, среди трёх ведущих инструментов для фронтенд-разработки (это — Angular, React и Vue), обладает самыми низкими входными барьерами. Это так по нескольким причинам, но для меня всё сводится к трём основным особенностям Vue:\r\n\r\nОтличная документация.\r\nЗамечательное сообщество.\r\nЭто — прогрессивный фреймворк.\r\n\r\n▍Документация\r\n\r\nЕсли поговорить с разработчиками, которым нравится Vue, то я думаю, что многие из них в первую очередь скажут о качестве документации этого фреймворка. Если посетить сайт Vue.js, то можно обнаружить, что документация разбита на несколько разделов:\r\n\r\nРуководство. Здесь можно найти всё то, что нужно для того, чтобы начать работу с Vue.js. Этот раздел разбит на удобные для восприятия подразделы, которые знакомят читателя с концепциями, нужными для того, чтобы приступить к разработке приложений, основанных на компонентах.\r\nAPI. В этом разделе приводится детальное описание API Vue. Например, если вам когда-нибудь попадётся какой-нибудь метод, в предназначении которого вы не вполне уверены, прояснить ситуацию поможет посещение этого раздела.\r\nРекомендации. Тут можно найти замечательные рекомендации, следуя которым можно избежать появления ошибок. Эти рекомендации способны предостеречь разработчика от использования анти-паттернов. Важно то, что здесь приведены скорее не жёсткие правила, а нечто вроде руководства. После того, как вы немного освоитесь с Vue, напишете несколько приложений, я порекомендовал бы вам почитать материалы этого раздела. Я полагаю, что это — очень ценный источник знаний по Vue.\r\nПримеры. Здесь можно найти примеры приложений, разработанных средствами Vue. На вашем месте я пока не заглядывал бы сюда до тех пор, пока не освоился бы немного с разработкой компонентов. Но немного позже, когда вы будете готовы к тому, чтобы узнать о том, как устроены полноценные Vue-приложения, вам стоит изучить этот раздел.\r\nКнига рецептов. В данном разделе можно найти ответы на часто задаваемые вопросы о Vue. Например — на такие: «Как выполнить валидацию формы?», «Как провести модульное тестирование компонента?». Это, опять же, ценный ресурс, но освоение его материалов стоит отложить до того момента, когда у вас появятся вопросы, подобные тем, что приведены выше.\r\nИнструменты и основные библиотеки. На сайте Vue есть отличные материалы по инструментам и основным библиотекам. В особые подробности об этом мы тут вдаваться не будем, так как нам нужно поскорее приступить к написанию кода. Я приведу тут несколько ссылок на материалы, о существовании которых полезно знать. Итак, среди инструментов Vue я отметил бы следующие: инструменты разработчика, Vue CLI, Vue Loader. Вот ссылки на материалы по официальным библиотекам: Vue Router, Vuex, Vue Server Renderer.', '2020-12-17', '50195f0d8694e8be32bf8300159a5c4f.jpg', 'Vue', 0, 4, 0),
(17, 'Почему мы выбрали Vue.js (а не React)', 'Популярность React взлетела до небес за последние год-два, и теперь, пожалуй, это выбор по умолчанию для JS разработчика, который хочет написать на фронтенде что-то сложнее трехстрочного абзаца кода.\r\n\r\nМы запилили несколько SPA и динамических виджетов на React, мы тестировали React Native (под iOS) и Redux. Я думаю, что React был большим шагом для мира JS с точки зрения осведомленности о состоянии, и он показал многим людям, что такое реальное функциональное программирование в хорошем, прагматичном ключе. Также я думаю, что React Native велик – он буквально меняет весь ландшафт мобильной разработки.\r\n\r\nНедостатки React для меня:\r\n\r\nЗачастую чистота, иммутабельность и идеология доминирует над прагматичным подходом\r\n\r\nНе поймите меня неправильно. Я ценю чистоту (purity) и простоту подхода render() – без сомнения, это отличная идея, которая работает в реальной разработке. Я говорю о других вещах.\r\n\r\nЯ думаю, вот этот уровень строгости и чистоты может быть полезным, когда у вас работает 1000 разработчиков в компании – примерно тогда же, когда вы решите разработать свой собственный синтаксис, чтобы перевести на статические типы весь ваш PHP код. Или когда вы являетесь разработчиком Haskell, который решил постичь JS. Но у большинства компаний гораздо меньше разработчиков, небольшие бюджеты и цели, отличающиеся от целей Facebook. Я остановлюсь на этом подробнее чуть дальше.\r\n\r\nJSX – отстой\r\n\r\nПодождите секундочку! Я знаю! Это «просто чистый Javascript со специальным синтаксисом» . Нашим ребятам, которые рисуют в скетче и фотошопе дизайн и потом конвертируют его в HTML, у которых жесткие дедлайны и которые прямо сейчас верстают вот эту форму, обернув ее в некоторое количество div\'ов – прямо сейчас – совершенно по барабану чистота и «простота» ES6. Применение некоего дизайна к компонентам React – работа не фонтан, потому что JSX не хватает читаемости. Невозможность поставить старый добрый IF в какой-то блок HTML кода – это плохо, и, пожалуйста, не верьте поклонникам React, которые говорят что «if() – это прошлый век, а сейчас все нормальные программисты используют тернарные операторы». Позвольте мне заверить вас: JSX – это все еще мешанина HTML и JS в момент, когда вы читаете и редактируете его, даже если потом он будет скомпилирован в чистый JS.', '2020-12-19', '7136476c6d534c22d8288263f54de474.jpg', 'Vue', 0, 4, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `comment_id` int(11) DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `delete` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1608664422),
('m201207_123808_create_topic_table', 1608664425),
('m201207_123825_create_user_table', 1608664425),
('m201207_123841_create_article_table', 1608664425),
('m201207_123850_create_comment_table', 1608664425);

-- --------------------------------------------------------

--
-- Структура таблицы `topic`
--

CREATE TABLE `topic` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `topic`
--

INSERT INTO `topic` (`id`, `name`) VALUES
(2, 'React'),
(3, 'Angular'),
(4, 'Vue');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `login`, `password`, `image`) VALUES
(0, 'admin', 'admin@gmail.com', 'admin', NULL),
(1, 'demo', 'demo@gmail.com', 'demo', NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-topic_id` (`topic_id`),
  ADD KEY `idx-post-user_id` (`user_id`);

--
-- Индексы таблицы `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-post-user_id` (`user_id`),
  ADD KEY `idx-article_id` (`article_id`),
  ADD KEY `idx-comment_id` (`comment_id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `topic`
--
ALTER TABLE `topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `fk-post-user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-topic_id` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `fk-article_id` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-comment-post-user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-comment_id` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
