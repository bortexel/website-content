## Чат-группы

На сервере имеются чат-группы. В группу можно написать сообщение и оно будет отображено всем игрокам, которые в ней состоят. Для создания группы используется команда `/party create <название>`. Название изменить будет нельзя, оно же будет использоваться для идентификации групп. К слову, игрок может состоять и владеть сразу несколькими группами.  

Чтобы просмотреть список групп, в которых Вы состоите, можно использовать команду `/party list`.  

Есть некоторые параметры, которые можно поменять. Это можно сделать с помощью `/party set <группа> <параметр> <значение>`.
* Описание (`description`) отображается при наведении на название группы в чате.
* Параметр `color` отвечает за то, каким цветом будет написано название группы в чате.

Для добавления игрока в группу служит команды `/party invite <группа> <никнейм>`. После выполнения данной команды указанному игроку будет отправлено приглашение в группу.  

Чтобы покинуть группу есть команда `/party leave <группа>`. Владелец группы может исключить из группы её участника, если это необходимо, с помощью команды `/party kick <группа> <игрок>`.  

Группу можно передать любому игроку, который состоит в ней. Сделать это можно при помощи команды `/party set owner <группа> <игрок>`. Указанный игрок получит все права владельца группы, тем временем как у бывшего владельца эти права будут отобраны. Так как права передаются безвозвратно, то перед внесением изменений сервер попросит подтвердить то, что игрок действительно хочет это сделать. Речь идёт о таких правах как
* приглашать и исключать игроков
* добавлять и удалять сокращения
* расформировывать группу
* изменять параметры группы
* передавать право владения группой

Если группа внезапно стала не нужна, можно её расформировать с помощью команды `/party disband <группа>`. Разумеется, сделать это может только её владелец.  

Ну и самое главное, как же, собственно, написать сообщение в группу? Для этого необходимо начать сообщение с `@[название группы]`. К примеру, `@testGroup Всем привет!` отправит сообщение «Всем привет!» в группу с названием «testGroup», разумеется, если она существует. Также, можно кликнуть по названию группы в чате, тогда не придётся вводить его вручную.  

Чтобы не писать полностью название группы, можно добавить сокращение. Сделать это можно с помощью команды `/party shortcut <группа> add <сокращение>`. Как и название, сокращение не может содержать пробелы, но может содержать как русские, так и латинские буквы в любом регистре, а также цифры. Группа может иметь сколько угодно сокращений названия. Все они будут отображаться при наведении курсора на её название в чате. Когда у группы есть сокращение(-я) названия, то написать в неё можно как с помощью «классической» конструкции (`@название сообщение`), так и с помощью сокращения (`@сокращениеНазвания сообщение`). Чтобы удалить сокращение, используется команда `/party shortcut <группа> remove <сокращение>`. Если группа расформирована, то все её сокращения удаляются автоматически.  