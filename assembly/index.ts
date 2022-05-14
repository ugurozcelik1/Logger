
import { Log, logs } from "./model"

export function newLog (activity: string): Log{
  assert(activity != "", 'Activity can not be null.');
  const log = new Log(activity);
  logs.push(log);
  return log;
}

export function get (): Array<Log> {
  let logList = new Array<Log>(); 
  for (let index = 0; index < logs.length; index++) {
    logList[index] = logs[index];
  }
  return logList;
}

export function getByOwner (ownerId: string): Array<Log> {
  let logListSpecial = new Array<Log>();
  for (let i = 0; i < logs.length; i++) {
    if(logs[i].owner == ownerId)
      logListSpecial[i] = logs[i];
  }
  return logListSpecial;
}