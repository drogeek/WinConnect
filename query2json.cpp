#include "query2json.h"

const QJsonArray Query2Json::exec(const QByteArray sqlquery){
    QSqlQuery query;

    query.setForwardOnly(true);
    if (!query.exec(sqlquery))
    {
        throw dbError();
    }

//    QJsonDocument  json;
    QJsonArray     recordsArray;

    while(query.next()) {
        QJsonObject recordObject;
        for(int x=0; x < query.record().count(); x++) {
            recordObject.insert(
                        query.record().fieldName(x),
                        QJsonValue::fromVariant(query.value(x))
                        );
        }
        recordsArray.push_back(recordObject);
    }
    return recordsArray;
//    json.setArray(recordsArray);

//    return json.toJson(QJsonDocument::Compact);
}
