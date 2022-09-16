import 'package:mobx/mobx.dart';
import 'package:todo/core/utils/utils.dart';
import 'package:todo/modules/todo/domain/entity/todo_entity.dart';

part 'home_page_store.g.dart';

class HomePageStore = HomePageBase with _$HomePageStore;

abstract class HomePageBase with Store {
  @observable
  bool createNewNote = false;

  @observable
  List<ToDo> tarefas = [
    (ToDo(
        time: "10:00",
        data: '30/08/2022',
        todoName: "Euasda asdad assdasda Tarefa",
        observations:
            " asdasdsaasdasdsa asdsadasdasdsa asdasasdasd asdasd asd asdas as as das asdasdasdasd as sadsa as asd sa sa dasdasasdasdsadsa asdsadsadsadsad asdasdasdsad",
        color: selectedColors[3],
        completed: false)),
    ToDo(
        time: "8:30",
        data: '12/08/2022',
        todoName: 'Essa é uma tarefa Teste',
        observations: "Olá eu possuo uma observação",
        color: selectedColors[2],
        completed: false),
    (ToDo(
        time: "10:00",
        data: '30/08/2022',
        todoName: "Eu sou uma segunda Tarefa",
        observations: "",
        color: selectedColors[3],
        completed: false)),
    ToDo(
        time: "10:00",
        data: '30/08/2022',
        todoName:
            "Euasdasa asd ad daasdasas asd assasdasdas asd asasasdasdasd asd asdasd souasdasdasdasdasd umasdasdsada asdasdasasdasdasdasdasda Tarefa",
        observations: "",
        color: selectedColors[3],
        completed: false),
    ToDo(
        time: "10:00",
        data: '30/08/2022',
        todoName:
            "Euasdasa asd ad daasdasas asd assasdasdas asd asasasdasdasd asd asdasd souasdasdasdasdasd umasdasdsada asdasdasasdasdasdasdasda Tarefa",
        observations: "",
        color: selectedColors[3],
        completed: false),
  ];
}
