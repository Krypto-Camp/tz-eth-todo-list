pragma solidity ^0.8.10; // define ur solidity version

contract TODOList {
  uint256 public taskCount = 0; // actully write on blockchain and expose by public

  struct Task {
    uint256 id;
    string content;
    bool completed;
  }

  mapping(uint256 => Task) public tasks;

  event TaskCreated(
    uint id,
    string content,
    bool completed
  );

  event TaskCompleted(
    uint id,
    bool completed
  );

  constructor() {
    createTask('checkout todo list');
  }

  function createTask(string memory _content) public {
    taskCount++;
    tasks[taskCount] = Task(taskCount, _content, false);

    emit TaskCreated(taskCount, _content, false);
  }

  function toggleCompleted(uint _id) public {
    Task memory _task  = tasks[_id];
    _task.completed = !_task.completed;
    tasks[_id] = _task;

    emit TaskCompleted(_id, _task.completed);
  }
}
