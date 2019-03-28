#ifndef FLASHMODEL_H
#define FLASHMODEL_H

#include <QAbstractListModel>
#include <QCamera>
#include <QPair>

#if defined PIGGZOVISION
 #define PIGGZOVISION_COMMON_DLLSPEC Q_DECL_EXPORT
#else
 #define PIGGZOVISION_COMMON_DLLSPEC Q_DECL_IMPORT
#endif

class PIGGZOVISION_COMMON_DLLSPEC FlashModel : public QAbstractListModel
{
    Q_OBJECT

public:

    enum FlashRoles {
        FlashName = Qt::UserRole + 1,
        FlashValue
    };

    FlashModel();

    virtual QHash<int, QByteArray> roleNames() const;
    virtual int rowCount(const QModelIndex &parent) const;
    virtual QVariant data(const QModelIndex &index, int role) const;

    Q_INVOKABLE void setCamera(QObject *camera);

private:
    QMap<int, QString> m_flashModes;
    QCamera *m_camera = nullptr;

    QString flashName(QCameraExposure::FlashMode flash) const;
};

#endif // FOCUSMODEL_H
