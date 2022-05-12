import { PersistentVector, Context } from "near-sdk-as";
import { AccountId } from "./utils";

@nearBindgen
export class Log {

    owner: AccountId;
    activityType: string;

    constructor (_activityType: string){
        this.owner = Context.sender;
        this.activityType = _activityType;   
    }
}

export const logs = new PersistentVector<Log>('l');

